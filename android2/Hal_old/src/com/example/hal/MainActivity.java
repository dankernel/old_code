package com.example.hal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		/* 소리 */
		startService(new Intent("com.example.hal.service.EVENT_CATCHER"));

		/* camera */
		final ToggleButton tb_camera = (ToggleButton)this.findViewById(R.id.toggleButton_camera);
		tb_camera.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();

				if(tb_camera.isChecked()){
					String NativeStatus  = String.valueOf(nativeCall.CameraOn());
					Toast.makeText(getApplicationContext(), "Camera ON,  Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();

				}else{
					String NativeStatus = String.valueOf(nativeCall.CameraOff());
					Toast.makeText(getApplicationContext(), "Camera OFF, Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();			
				}
			}
		});

		/* Microphone */
		final ToggleButton tb_microphone = (ToggleButton)this.findViewById(R.id.toggleButton_microphone);
		tb_microphone.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();

				if(tb_microphone.isChecked()){
					String NativeStatus = String.valueOf(nativeCall.MicrophoneOn());
					Toast.makeText(getApplicationContext(), "Microphone ON,  Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();
				}else{
					String NativeStatus = String.valueOf(nativeCall.MicrophoneOff());
					Toast.makeText(getApplicationContext(), "Microphone OFF, Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();					 
				}
			}
		});

		/* SDCard */
		final ToggleButton tb_sdcard = (ToggleButton)this.findViewById(R.id.toggleButton_sdcard);
		tb_sdcard.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();

				if(tb_sdcard.isChecked()){
					String NativeStatus = String.valueOf(nativeCall.SDCardOn());
					Toast.makeText(getApplicationContext(), "SDCard ON,  Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();
				}else{
					String NativeStatus = String.valueOf(nativeCall.SDCardOff());
					Toast.makeText(getApplicationContext(), "SDCard OFF, Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();					 
				}
			}
		});

		/* GPS */
		final ToggleButton tb_gps = (ToggleButton)this.findViewById(R.id.toggleButton_gps);
		tb_gps.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();
				if(tb_gps.isChecked()){

					String NativeStatus = String.valueOf(nativeCall.GPSOn());
					Toast.makeText(getApplicationContext(), "GPS ON,  Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();
				}else{
					String NativeStatus = String.valueOf(nativeCall.GPSOff());
					Toast.makeText(getApplicationContext(), "GPS OFF, Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();					 
				}
			}
		});

		/* Mobile */
		final ToggleButton tb_mobile = (ToggleButton)this.findViewById(R.id.toggleButton_mobile);
		tb_mobile.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();

				if(tb_mobile.isChecked()){
					setMobileDataEnabled(_this, true);
					String NativeStatus = String.valueOf(nativeCall.MobileOn());
					Toast.makeText(getApplicationContext(), "Mobile ON,  Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();
				}else{
					String NativeStatus = String.valueOf(nativeCall.MobileOff());
					Toast.makeText(getApplicationContext(), "Mobile OFF, Status is " + NativeStatus,  Toast.LENGTH_SHORT).show();					 
				}
			}
		});

		/* wifi */
		final ToggleButton tb_wifi = (ToggleButton)this.findViewById(R.id.toggleButton_wifi);
		tb_wifi.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();
				String NativeStatus = String.valueOf(nativeCall.WifiOn());
				toast_print("Wifi ON,  Status is " + NativeStatus);

				if (tb_wifi.isChecked()) 
					toggleWiFi(true);
				else
					toggleWiFi(false);		 

			}
		});

		/* Bluetooth */
		final ToggleButton tb_bluetooth = (ToggleButton)this.findViewById(R.id.toggleButton_bluetooth);
		tb_bluetooth.setOnClickListener(new View.OnClickListener(){

			@Override
			public void onClick(View v) {
				NativeCall nativeCall = new NativeCall();
				String NativeStatus = String.valueOf(nativeCall.BluetoothOn());
				toast_print("Bluetooth OFF, Status is " + NativeStatus);

				if(tb_bluetooth.isChecked())
					togglebluetooth(true);
				else
					togglebluetooth(false);

			}
		});        

		/* exit */
		Button bt_exit = (Button) findViewById(R.id.button_exit);
		bt_exit.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				stopService(new Intent("com.example.hal.service.EVENT_CATCHER"));
				finish();
			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	/* */
	public void toggleWiFi(boolean status) {
		WifiManager wifiManager = (WifiManager) this.getSystemService(Context.WIFI_SERVICE);
		if (status == true && !wifiManager.isWifiEnabled()) {
			wifiManager.setWifiEnabled(true);
		} else if (status == false && wifiManager.isWifiEnabled()) {
			wifiManager.setWifiEnabled(false);
		}
	}

	public void togglebluetooth(boolean status) {
		BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
		//현재 Bluetooth가 켜져 있는지, 혹은 켜는 중인지 확인 한다. 
		if (adapter.getState() == BluetoothAdapter.STATE_TURNING_ON || adapter.getState() == BluetoothAdapter.STATE_ON){
			adapter.disable();   // Bluetooth Off
		}
		else{
			adapter.enable();     // Bluetooth On
		}
	}


	

	public void toast_print(String get_text){
		Toast t = null;
		if(t == null) {
			t = Toast.makeText(this, get_text, Toast.LENGTH_SHORT);
		}
		t.show();
	}


}