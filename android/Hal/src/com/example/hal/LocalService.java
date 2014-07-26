package com.example.hal;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import android.widget.Toast;
import android.content.BroadcastReceiver;

public class LocalService extends Service {
	private MediaPlayer player;

	@Override
	public IBinder onBind(Intent arg0) {
		return null;
	}    

	private BroadcastReceiver surveillant = new BroadcastReceiver() {

		@Override
		public void onReceive(Context context, Intent intent) {
			// Detect WIFI - http://is.gd/ofsqSC
			if(intent.getAction().matches("android.net.wifi.supplicant.CONNECTION_CHANGE")){ 
				boolean connected = intent.getBooleanExtra(WifiManager.EXTRA_SUPPLICANT_CONNECTED, false);

				if(!connected) {
					Toast.makeText(getApplicationContext(), "WIFI Disconnect", Toast.LENGTH_SHORT).show();
				}
			}else if(intent.getAction().matches("android.net.wifi.STATE_CHANGE")){
				NetworkInfo netInfo = intent.getParcelableExtra(WifiManager.EXTRA_NETWORK_INFO);

				if(netInfo.isConnected()) {
					Toast.makeText(getApplicationContext(), "WIFI Connect", Toast.LENGTH_SHORT).show();
				}
			}

			// Detect Mobile - http://is.gd/AjseIh
			if (intent.getAction().matches("android.net.conn.CONNECTIVITY_CHANGE")) {
				ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
				NetworkInfo mobNetInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);

				if(mobNetInfo.isConnected()){
					Toast.makeText(context,"Mobile Network On", Toast.LENGTH_SHORT).show();    	
				}else{
					Toast.makeText(context,"Mobile Network Off" , Toast.LENGTH_SHORT).show();                	
				}
			}

			// Detect GPS - http://is.gd/6WZ1Sp
			if (intent.getAction().matches("android.location.PROVIDERS_CHANGED")) {
				LocationManager manager = (LocationManager) getSystemService(Context.LOCATION_SERVICE );
				boolean statusOfGPS = manager.isProviderEnabled(LocationManager.GPS_PROVIDER);

				if (statusOfGPS) {
					Toast.makeText(getApplicationContext(), "GPS ON", Toast.LENGTH_SHORT).show();
				} else {
					Toast.makeText(getApplicationContext(), "GPS OFF", Toast.LENGTH_SHORT).show();
				}
			}

			// Detch BlueTooth -
			if(intent.getAction().matches("android.bluetooth.BluetoothDevice.ACTION_ACL_CONNECTED")){ 
				Toast.makeText(getApplicationContext(), "BlueTooth ON", Toast.LENGTH_SHORT).show();		
			}else if(intent.getAction().matches("android.bluetooth.BluetoothDevice.ACTION_ACL_DISCONNECTED")){
				Toast.makeText(getApplicationContext(), "BlueTooth OFF", Toast.LENGTH_SHORT).show();				
			}
		}
	};

	@Override
	public void onCreate() {
		super.onCreate();

		player = MediaPlayer.create(this, R.raw.bradinsky);

		final IntentFilter filters = new IntentFilter();

		// WIFI
		filters.addAction("android.net.wifi.STATE_CHANGE");
		filters.addAction("android.net.wifi.supplicant.CONNECTION_CHANGE");

		// Mobile
		filters.addAction("android.net.conn.CONNECTIVITY_CHANGE");

		// GPS
		filters.addAction("android.location.PROVIDERS_CHANGED");

		// BlueTooth
		filters.addAction("android.bluetooth.BluetoothDevice.ACTION_ACL_CONNECTED");
		filters.addAction("android.bluetooth.BluetoothDevice.ACTION_ACL_DISCONNECTED");

		registerReceiver(surveillant, filters);        
		Toast.makeText(getApplicationContext(), "Start Broadcast Service",  Toast.LENGTH_SHORT).show();
	} 

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		super.onStartCommand(intent, flags, startId); 

		if (player != null && !player.isPlaying()) {
			player.start();
		}   

		return START_NOT_STICKY;
	}

	@Override
	public void onDestroy() {    
		super.onDestroy();

		if (player != null) {
			if (player.isPlaying()) {
				player.stop();
			}   
			player.release();
		}

		unregisterReceiver(surveillant);
		Toast.makeText(getApplicationContext(), "Stop Broadcast Service",  Toast.LENGTH_SHORT).show();
	}   

	
}
