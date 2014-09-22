/** \file
 *  This OBJC source file was generated by $ANTLR version 3.2 Aug 24, 2010 10:45:57
 *
 *     -  From the grammar source file : SymbolTable.g
 *     -                            On : 2010-08-24 13:53:46
 *     -                for the parser : SymbolTableParserParser *
 * Editing it, at least manually, is not wise. 
 *
 * ObjC language generator and runtime by Alan Condit, acondit|hereisanat|ipns|dotgoeshere|com.
 *
 *
*/
// [The "BSD licence"]
// Copyright (c) 2010 Alan Condit
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
// 3. The name of the author may not be used to endorse or promote products
//    derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
// IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
// OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
// NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
// THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// $ANTLR 3.2 Aug 24, 2010 10:45:57 SymbolTable.g 2010-08-24 13:53:46

/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "SymbolTableParser.h"
/* ----------------------------------------- */


/* ============================================================================= */

/* =============================================================================
 * Start of recognizer
 */



#pragma mark Bitsets
static ANTLRBitSet *FOLLOW_globals_in_prog44;
static const unsigned long long FOLLOW_globals_in_prog44_data[] = { 0x0000000000000082LL};
static ANTLRBitSet *FOLLOW_method_in_prog47;
static const unsigned long long FOLLOW_method_in_prog47_data[] = { 0x0000000000000082LL};
static ANTLRBitSet *FOLLOW_decl_in_globals79;
static const unsigned long long FOLLOW_decl_in_globals79_data[] = { 0x0000000000004002LL};
static ANTLRBitSet *FOLLOW_7_in_method110;
static const unsigned long long FOLLOW_7_in_method110_data[] = { 0x0000000000000010LL};
static ANTLRBitSet *FOLLOW_ID_in_method112;
static const unsigned long long FOLLOW_ID_in_method112_data[] = { 0x0000000000000100LL};
static ANTLRBitSet *FOLLOW_8_in_method114;
static const unsigned long long FOLLOW_8_in_method114_data[] = { 0x0000000000000200LL};
static ANTLRBitSet *FOLLOW_9_in_method116;
static const unsigned long long FOLLOW_9_in_method116_data[] = { 0x0000000000000400LL};
static ANTLRBitSet *FOLLOW_block_in_method118;
static const unsigned long long FOLLOW_block_in_method118_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_10_in_block147;
static const unsigned long long FOLLOW_10_in_block147_data[] = { 0x0000000000004C10LL};
static ANTLRBitSet *FOLLOW_decl_in_block150;
static const unsigned long long FOLLOW_decl_in_block150_data[] = { 0x0000000000004C10LL};
static ANTLRBitSet *FOLLOW_stat_in_block155;
static const unsigned long long FOLLOW_stat_in_block155_data[] = { 0x0000000000000C10LL};
static ANTLRBitSet *FOLLOW_11_in_block159;
static const unsigned long long FOLLOW_11_in_block159_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_ID_in_stat183;
static const unsigned long long FOLLOW_ID_in_stat183_data[] = { 0x0000000000001000LL};
static ANTLRBitSet *FOLLOW_12_in_stat185;
static const unsigned long long FOLLOW_12_in_stat185_data[] = { 0x0000000000000020LL};
static ANTLRBitSet *FOLLOW_INT_in_stat187;
static const unsigned long long FOLLOW_INT_in_stat187_data[] = { 0x0000000000002000LL};
static ANTLRBitSet *FOLLOW_13_in_stat189;
static const unsigned long long FOLLOW_13_in_stat189_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_block_in_stat199;
static const unsigned long long FOLLOW_block_in_stat199_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_14_in_decl213;
static const unsigned long long FOLLOW_14_in_decl213_data[] = { 0x0000000000000010LL};
static ANTLRBitSet *FOLLOW_ID_in_decl215;
static const unsigned long long FOLLOW_ID_in_decl215_data[] = { 0x0000000000002000LL};
static ANTLRBitSet *FOLLOW_13_in_decl217;
static const unsigned long long FOLLOW_13_in_decl217_data[] = { 0x0000000000000002LL};


#pragma mark Dynamic Global Scopes
@implementation Symbols_Scope  /* globalAttributeScopeImpl */
/* start of synthesize -- OBJC-Line 1750 */

@synthesize names;
+ (Symbols_Scope *)newSymbols_Scope
{
    return [[[Symbols_Scope alloc] init] retain];
}
/* start of iterate get and set functions */

- (ANTLRHashMap *)getnames { return( names ); }

- (void)setnames:(ANTLRHashMap *)aVal { names = aVal; }



/* End of iterate get and set functions */

@end /* end of Symbols_Scope implementation */


#pragma mark Dynamic Rule Scopes

#pragma mark Rule return scopes start
/* returnScope */

/* returnScope */

/* returnScope */

/* returnScope */

/* returnScope */

/* returnScope */



@implementation SymbolTableParser  // line 637

+ (void) initialize
{
    #pragma mark Bitsets
    FOLLOW_globals_in_prog44 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_globals_in_prog44_data Count:(NSUInteger)1] retain];
    FOLLOW_method_in_prog47 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_method_in_prog47_data Count:(NSUInteger)1] retain];
    FOLLOW_decl_in_globals79 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_decl_in_globals79_data Count:(NSUInteger)1] retain];
    FOLLOW_7_in_method110 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_7_in_method110_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_method112 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_method112_data Count:(NSUInteger)1] retain];
    FOLLOW_8_in_method114 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_8_in_method114_data Count:(NSUInteger)1] retain];
    FOLLOW_9_in_method116 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_9_in_method116_data Count:(NSUInteger)1] retain];
    FOLLOW_block_in_method118 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_block_in_method118_data Count:(NSUInteger)1] retain];
    FOLLOW_10_in_block147 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_10_in_block147_data Count:(NSUInteger)1] retain];
    FOLLOW_decl_in_block150 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_decl_in_block150_data Count:(NSUInteger)1] retain];
    FOLLOW_stat_in_block155 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_stat_in_block155_data Count:(NSUInteger)1] retain];
    FOLLOW_11_in_block159 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_11_in_block159_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_stat183 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_stat183_data Count:(NSUInteger)1] retain];
    FOLLOW_12_in_stat185 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_12_in_stat185_data Count:(NSUInteger)1] retain];
    FOLLOW_INT_in_stat187 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_INT_in_stat187_data Count:(NSUInteger)1] retain];
    FOLLOW_13_in_stat189 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_13_in_stat189_data Count:(NSUInteger)1] retain];
    FOLLOW_block_in_stat199 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_block_in_stat199_data Count:(NSUInteger)1] retain];
    FOLLOW_14_in_decl213 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_14_in_decl213_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_decl215 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_decl215_data Count:(NSUInteger)1] retain];
    FOLLOW_13_in_decl217 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_13_in_decl217_data Count:(NSUInteger)1] retain];

    [ANTLRBaseRecognizer setTokenNames:[[[NSArray alloc] initWithObjects:@"<invalid>", @"<EOR>", @"<DOWN>", @"<UP>", 
 @"ID", @"INT", @"WS", @"'method'", @"'('", @"')'", @"'{'", @"'}'", @"'='", 
 @"';'", @"'int'", nil] retain]];
}

+ (SymbolTableParser *)newSymbolTableParser:(id<ANTLRTokenStream>)aStream
{
    return [[SymbolTableParser alloc] initWithTokenStream:aStream];

}

- (id) initWithTokenStream:(id<ANTLRTokenStream>)aStream
{
    if ((self = [super initWithTokenStream:aStream State:[[ANTLRRecognizerSharedState newANTLRRecognizerSharedStateWithRuleLen:6+1] retain]]) != nil) {



        /* start of actions-actionScope-init */

        level = 0;

        /* start of init */
    }
    return self;
}

- (void) dealloc
{
    [Symbols_scope release];
    [super dealloc];
}
// start actions.actionScope.methods
// start methods()
// start rules
/*
 * $ANTLR start prog
 * SymbolTable.g:25:1: prog : globals ( method )* ;
 */
- (void) prog
{
    /* ruleScopeSetUp */

    @try {
        // SymbolTable.g:25:5: ( globals ( method )* ) // ruleBlockSingleAlt
        // SymbolTable.g:25:9: globals ( method )* // alt
        {
        [self pushFollow:FOLLOW_globals_in_prog44];
        [self globals];
        [self popFollow];

          /* element() */
        do {
            NSInteger alt1=2;
            NSInteger LA1_0 = [input LA:1];
            if ( (LA1_0==7) ) {
                alt1=1;
            }


            switch (alt1) {
                case 1 : ;
                    // SymbolTable.g:25:18: method // alt
                    {
                    [self pushFollow:FOLLOW_method_in_prog47];
                    [self method];
                    [self popFollow];

                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    goto loop1;
            }
        } while (YES);
        loop1: ;
          /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end prog */
/*
 * $ANTLR start globals
 * SymbolTable.g:28:1: globals : ( decl )* ;
 */
- (void) globals
{
    /* ruleScopeSetUp */
    gStack = [ANTLRSymbolStack newANTLRSymbolStackWithLen:30];
    Symbols_scope = [[Symbols_Scope newSymbols_Scope] retain];
    [gStack push:Symbols_scope];


        level++;
        /* scopeSetAttributeRef */
    ((Symbols_Scope *)[gStack peek]).names =  [ANTLRHashMap newANTLRHashMapWithLen:101];

    @try {
        // SymbolTable.g:34:5: ( ( decl )* ) // ruleBlockSingleAlt
        // SymbolTable.g:34:9: ( decl )* // alt
        {
        do {
            NSInteger alt2=2;
            NSInteger LA2_0 = [input LA:1];
            if ( (LA2_0==14) ) {
                alt2=1;
            }


            switch (alt2) {
                case 1 : ;
                    // SymbolTable.g:34:10: decl // alt
                    {
                    [self pushFollow:FOLLOW_decl_in_globals79];
                    [self decl];
                    [self popFollow];

                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    goto loop2;
            }
        } while (YES);
        loop2: ;
          /* element() */

                NSLog(@"globals: %@", /* scopeAttributeRef */
        ((Symbols_Scope *)[gStack peek]).names);
                level--;
                  /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
        [gStack pop];

    }
    return ;
}
/* $ANTLR end globals */
/*
 * $ANTLR start method
 * SymbolTable.g:41:1: method : 'method' ID '(' ')' block ;
 */
- (void) method
{
    /* ruleScopeSetUp */

    @try {
        // SymbolTable.g:42:5: ( 'method' ID '(' ')' block ) // ruleBlockSingleAlt
        // SymbolTable.g:42:9: 'method' ID '(' ')' block // alt
        {
        [self match:input TokenType:7 Follow:FOLLOW_7_in_method110];   /* element() */
        [self match:input TokenType:ID Follow:FOLLOW_ID_in_method112];   /* element() */
        [self match:input TokenType:8 Follow:FOLLOW_8_in_method114];   /* element() */
        [self match:input TokenType:9 Follow:FOLLOW_9_in_method116];   /* element() */
        [self pushFollow:FOLLOW_block_in_method118];
        [self block];
        [self popFollow];

          /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end method */
/*
 * $ANTLR start block
 * SymbolTable.g:45:1: block : '{' ( decl )* ( stat )* '}' ;
 */
- (void) block
{
    /* ruleScopeSetUp */
    gStack = [ANTLRSymbolStack newANTLRSymbolStackWithLen:30];
    Symbols_scope = [[Symbols_Scope newSymbols_Scope] retain];
    [gStack push:Symbols_scope];


        level++;
        /* scopeSetAttributeRef */
    ((Symbols_Scope *)[gStack peek]).names =  [ANTLRHashMap newANTLRHashMapWithLen:101];

    @try {
        // SymbolTable.g:51:5: ( '{' ( decl )* ( stat )* '}' ) // ruleBlockSingleAlt
        // SymbolTable.g:51:9: '{' ( decl )* ( stat )* '}' // alt
        {
        [self match:input TokenType:10 Follow:FOLLOW_10_in_block147];   /* element() */
        do {
            NSInteger alt3=2;
            NSInteger LA3_0 = [input LA:1];
            if ( (LA3_0==14) ) {
                alt3=1;
            }


            switch (alt3) {
                case 1 : ;
                    // SymbolTable.g:51:14: decl // alt
                    {
                    [self pushFollow:FOLLOW_decl_in_block150];
                    [self decl];
                    [self popFollow];

                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    goto loop3;
            }
        } while (YES);
        loop3: ;
          /* element() */
        do {
            NSInteger alt4=2;
            NSInteger LA4_0 = [input LA:1];
            if ( (LA4_0==ID||LA4_0==10) ) {
                alt4=1;
            }


            switch (alt4) {
                case 1 : ;
                    // SymbolTable.g:51:22: stat // alt
                    {
                    [self pushFollow:FOLLOW_stat_in_block155];
                    [self stat];
                    [self popFollow];

                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    goto loop4;
            }
        } while (YES);
        loop4: ;
          /* element() */
        [self match:input TokenType:11 Follow:FOLLOW_11_in_block159];   /* element() */

                NSLog(@"level %d symbols: %@", level, /* scopeAttributeRef */
        ((Symbols_Scope *)[gStack peek]).names);
                level--;
                  /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
        [gStack pop];

    }
    return ;
}
/* $ANTLR end block */
/*
 * $ANTLR start stat
 * SymbolTable.g:58:1: stat : ( ID '=' INT ';' | block );
 */
- (void) stat
{
    /* ruleScopeSetUp */

    @try {
        // SymbolTable.g:58:5: ( ID '=' INT ';' | block ) //ruleblock
        NSInteger alt5=2;
        NSInteger LA5_0 = [input LA:1];

        if ( (LA5_0==ID) ) {
            alt5=1;
        }
        else if ( (LA5_0==10) ) {
            alt5=2;
        }
        else {
            ANTLRNoViableAltException *nvae = [ANTLRNoViableAltException newANTLRNoViableAltException:5 state:0 stream:input];
            @throw nvae;
        }
        switch (alt5) {
            case 1 : ;
                // SymbolTable.g:58:9: ID '=' INT ';' // alt
                {
                [self match:input TokenType:ID Follow:FOLLOW_ID_in_stat183];   /* element() */
                [self match:input TokenType:12 Follow:FOLLOW_12_in_stat185];   /* element() */
                [self match:input TokenType:INT Follow:FOLLOW_INT_in_stat187];   /* element() */
                [self match:input TokenType:13 Follow:FOLLOW_13_in_stat189];   /* element() */
                 /* elements */
                }
                break;
            case 2 : ;
                // SymbolTable.g:59:9: block // alt
                {
                [self pushFollow:FOLLOW_block_in_stat199];
                [self block];
                [self popFollow];

                  /* element() */
                 /* elements */
                }
                break;

        }
        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end stat */
/*
 * $ANTLR start decl
 * SymbolTable.g:62:1: decl : 'int' ID ';' ;
 */
- (void) decl
{
    /* ruleScopeSetUp */

    @try {
        ANTLRCommonToken *ID1 = nil;

        // SymbolTable.g:62:5: ( 'int' ID ';' ) // ruleBlockSingleAlt
        // SymbolTable.g:62:9: 'int' ID ';' // alt
        {
        [self match:input TokenType:14 Follow:FOLLOW_14_in_decl213];   /* element() */
        ID1=(ANTLRCommonToken *)[self match:input TokenType:ID Follow:FOLLOW_ID_in_decl215];   /* element() */
        [self match:input TokenType:13 Follow:FOLLOW_13_in_decl217];   /* element() */
        [/* scopeAttributeRef */
        ((Symbols_Scope *)[gStack peek]).names addObject:ID1];  /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end decl */

@end /* end of SymbolTableParser implementation line 692 */


/* End of code
 * =============================================================================
 */
