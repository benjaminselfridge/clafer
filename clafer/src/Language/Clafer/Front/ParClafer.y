-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Language.Clafer.Front.ParClafer where
import Language.Clafer.Front.AbsClafer
import Language.Clafer.Front.LexClafer
import Language.Clafer.Front.ErrM

}

%name pModule Module
%name pClafer Clafer
%name pConstraint Constraint
%name pAssertion Assertion
%name pGoal Goal
-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype {Token}
%token
  '!' { PT _ (TS _ 1) }
  '!=' { PT _ (TS _ 2) }
  '#' { PT _ (TS _ 3) }
  '%' { PT _ (TS _ 4) }
  '&' { PT _ (TS _ 5) }
  '&&' { PT _ (TS _ 6) }
  '(' { PT _ (TS _ 7) }
  ')' { PT _ (TS _ 8) }
  '*' { PT _ (TS _ 9) }
  '**' { PT _ (TS _ 10) }
  '+' { PT _ (TS _ 11) }
  '++' { PT _ (TS _ 12) }
  ',' { PT _ (TS _ 13) }
  '-' { PT _ (TS _ 14) }
  '--' { PT _ (TS _ 15) }
  '-->' { PT _ (TS _ 16) }
  '-->>' { PT _ (TS _ 17) }
  '->' { PT _ (TS _ 18) }
  '->>' { PT _ (TS _ 19) }
  '-[' { PT _ (TS _ 20) }
  '.' { PT _ (TS _ 21) }
  '..' { PT _ (TS _ 22) }
  '/' { PT _ (TS _ 23) }
  ':' { PT _ (TS _ 24) }
  ':=' { PT _ (TS _ 25) }
  ':>' { PT _ (TS _ 26) }
  ';' { PT _ (TS _ 27) }
  '<' { PT _ (TS _ 28) }
  '<:' { PT _ (TS _ 29) }
  '<<' { PT _ (TS _ 30) }
  '<=' { PT _ (TS _ 31) }
  '<=>' { PT _ (TS _ 32) }
  '=' { PT _ (TS _ 33) }
  '=>' { PT _ (TS _ 34) }
  '>' { PT _ (TS _ 35) }
  '>=' { PT _ (TS _ 36) }
  '>>' { PT _ (TS _ 37) }
  '?' { PT _ (TS _ 38) }
  'F' { PT _ (TS _ 39) }
  'G' { PT _ (TS _ 40) }
  'U' { PT _ (TS _ 41) }
  'W' { PT _ (TS _ 42) }
  'X' { PT _ (TS _ 43) }
  '[' { PT _ (TS _ 44) }
  '\\' { PT _ (TS _ 45) }
  ']' { PT _ (TS _ 46) }
  ']->' { PT _ (TS _ 47) }
  ']->>' { PT _ (TS _ 48) }
  '`' { PT _ (TS _ 49) }
  'abstract' { PT _ (TS _ 50) }
  'after' { PT _ (TS _ 51) }
  'all' { PT _ (TS _ 52) }
  'always' { PT _ (TS _ 53) }
  'and' { PT _ (TS _ 54) }
  'assert' { PT _ (TS _ 55) }
  'before' { PT _ (TS _ 56) }
  'between' { PT _ (TS _ 57) }
  'disj' { PT _ (TS _ 58) }
  'else' { PT _ (TS _ 59) }
  'enum' { PT _ (TS _ 60) }
  'eventually' { PT _ (TS _ 61) }
  'final' { PT _ (TS _ 62) }
  'finally' { PT _ (TS _ 63) }
  'finalref' { PT _ (TS _ 64) }
  'finaltarget' { PT _ (TS _ 65) }
  'follow' { PT _ (TS _ 66) }
  'globally' { PT _ (TS _ 67) }
  'if' { PT _ (TS _ 68) }
  'in' { PT _ (TS _ 69) }
  'initial' { PT _ (TS _ 70) }
  'initially' { PT _ (TS _ 71) }
  'let' { PT _ (TS _ 72) }
  'lonce' { PT _ (TS _ 73) }
  'lone' { PT _ (TS _ 74) }
  'max' { PT _ (TS _ 75) }
  'maximize' { PT _ (TS _ 76) }
  'min' { PT _ (TS _ 77) }
  'minimize' { PT _ (TS _ 78) }
  'must' { PT _ (TS _ 79) }
  'mux' { PT _ (TS _ 80) }
  'never' { PT _ (TS _ 81) }
  'next' { PT _ (TS _ 82) }
  'no' { PT _ (TS _ 83) }
  'not' { PT _ (TS _ 84) }
  'one' { PT _ (TS _ 85) }
  'opt' { PT _ (TS _ 86) }
  'or' { PT _ (TS _ 87) }
  'precede' { PT _ (TS _ 88) }
  'product' { PT _ (TS _ 89) }
  'some' { PT _ (TS _ 90) }
  'sometime' { PT _ (TS _ 91) }
  'sum' { PT _ (TS _ 92) }
  'then' { PT _ (TS _ 93) }
  'until' { PT _ (TS _ 94) }
  'weakuntil' { PT _ (TS _ 95) }
  'xor' { PT _ (TS _ 96) }
  '{' { PT _ (TS _ 97) }
  '|' { PT _ (TS _ 98) }
  '||' { PT _ (TS _ 99) }
  '}' { PT _ (TS _ 100) }

L_PosInteger { PT _ (T_PosInteger _) }
L_PosDouble { PT _ (T_PosDouble _) }
L_PosReal { PT _ (T_PosReal _) }
L_PosString { PT _ (T_PosString _) }
L_PosIdent { PT _ (T_PosIdent _) }
L_PosLineComment { PT _ (T_PosLineComment _) }
L_PosBlockComment { PT _ (T_PosBlockComment _) }
L_PosAlloy { PT _ (T_PosAlloy _) }
L_PosChoco { PT _ (T_PosChoco _) }


%%

PosInteger    :: { PosInteger} : L_PosInteger { PosInteger (mkPosToken $1)}
PosDouble    :: { PosDouble} : L_PosDouble { PosDouble (mkPosToken $1)}
PosReal    :: { PosReal} : L_PosReal { PosReal (mkPosToken $1)}
PosString    :: { PosString} : L_PosString { PosString (mkPosToken $1)}
PosIdent    :: { PosIdent} : L_PosIdent { PosIdent (mkPosToken $1)}
PosLineComment    :: { PosLineComment} : L_PosLineComment { PosLineComment (mkPosToken $1)}
PosBlockComment    :: { PosBlockComment} : L_PosBlockComment { PosBlockComment (mkPosToken $1)}
PosAlloy    :: { PosAlloy} : L_PosAlloy { PosAlloy (mkPosToken $1)}
PosChoco    :: { PosChoco} : L_PosChoco { PosChoco (mkPosToken $1)}

Module :: { Module }
Module : ListDeclaration { Language.Clafer.Front.AbsClafer.Module ((mkCatSpan $1)) (reverse $1) }
Declaration :: { Declaration }
Declaration : 'enum' PosIdent '=' ListEnumId { Language.Clafer.Front.AbsClafer.EnumDecl ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $2 $4 }
            | Element { Language.Clafer.Front.AbsClafer.ElementDecl ((mkCatSpan $1)) $1 }
Clafer :: { Clafer }
Clafer : Abstract ListTempModifier GCard PosIdent Super Reference Card Init Transition Elements { Language.Clafer.Front.AbsClafer.Clafer ((mkCatSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3) >- (mkCatSpan $4) >- (mkCatSpan $5) >- (mkCatSpan $6) >- (mkCatSpan $7) >- (mkCatSpan $8) >- (mkCatSpan $9) >- (mkCatSpan $10)) $1 (reverse $2) $3 $4 $5 $6 $7 $8 $9 $10 }
Constraint :: { Constraint }
Constraint : '[' ListExp ']' { Language.Clafer.Front.AbsClafer.Constraint ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3)) (reverse $2) }
Assertion :: { Assertion }
Assertion : 'assert' '[' ListExp ']' { Language.Clafer.Front.AbsClafer.Assertion ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4)) (reverse $3) }
Goal :: { Goal }
Goal : '<<' 'min' ListExp '>>' { Language.Clafer.Front.AbsClafer.GoalMinDeprecated ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4)) (reverse $3) }
     | '<<' 'max' ListExp '>>' { Language.Clafer.Front.AbsClafer.GoalMaxDeprecated ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4)) (reverse $3) }
     | '<<' 'minimize' ListExp '>>' { Language.Clafer.Front.AbsClafer.GoalMinimize ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4)) (reverse $3) }
     | '<<' 'maximize' ListExp '>>' { Language.Clafer.Front.AbsClafer.GoalMaximize ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4)) (reverse $3) }
TempModifier :: { TempModifier }
TempModifier : 'initial' { Language.Clafer.Front.AbsClafer.Initial ((mkTokenSpan $1)) }
             | 'final' { Language.Clafer.Front.AbsClafer.Final ((mkTokenSpan $1)) }
             | 'finalref' { Language.Clafer.Front.AbsClafer.FinalRef ((mkTokenSpan $1)) }
             | 'finaltarget' { Language.Clafer.Front.AbsClafer.FinalTarget ((mkTokenSpan $1)) }
Transition :: { Transition }
Transition : {- empty -} { Language.Clafer.Front.AbsClafer.TransitionEmpty noSpan }
           | TransArrow Exp { Language.Clafer.Front.AbsClafer.Transition ((mkCatSpan $1) >- (mkCatSpan $2)) $1 $2 }
Abstract :: { Abstract }
Abstract : {- empty -} { Language.Clafer.Front.AbsClafer.AbstractEmpty noSpan }
         | 'abstract' { Language.Clafer.Front.AbsClafer.Abstract ((mkTokenSpan $1)) }
Elements :: { Elements }
Elements : {- empty -} { Language.Clafer.Front.AbsClafer.ElementsEmpty noSpan }
         | '{' ListElement '}' { Language.Clafer.Front.AbsClafer.ElementsList ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3)) (reverse $2) }
Element :: { Element }
Element : Clafer { Language.Clafer.Front.AbsClafer.Subclafer ((mkCatSpan $1)) $1 }
        | '`' Name Card Elements { Language.Clafer.Front.AbsClafer.ClaferUse ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3) >- (mkCatSpan $4)) $2 $3 $4 }
        | Constraint { Language.Clafer.Front.AbsClafer.Subconstraint ((mkCatSpan $1)) $1 }
        | Goal { Language.Clafer.Front.AbsClafer.Subgoal ((mkCatSpan $1)) $1 }
        | Assertion { Language.Clafer.Front.AbsClafer.SubAssertion ((mkCatSpan $1)) $1 }
Super :: { Super }
Super : {- empty -} { Language.Clafer.Front.AbsClafer.SuperEmpty noSpan }
      | ':' Exp26 { Language.Clafer.Front.AbsClafer.SuperSome ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
Reference :: { Reference }
Reference : {- empty -} { Language.Clafer.Front.AbsClafer.ReferenceEmpty noSpan }
          | '->' Exp23 { Language.Clafer.Front.AbsClafer.ReferenceSet ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
          | '->>' Exp23 { Language.Clafer.Front.AbsClafer.ReferenceBag ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
Init :: { Init }
Init : {- empty -} { Language.Clafer.Front.AbsClafer.InitEmpty noSpan }
     | InitHow Exp { Language.Clafer.Front.AbsClafer.InitSome ((mkCatSpan $1) >- (mkCatSpan $2)) $1 $2 }
InitHow :: { InitHow }
InitHow : '=' { Language.Clafer.Front.AbsClafer.InitConstant ((mkTokenSpan $1)) }
        | ':=' { Language.Clafer.Front.AbsClafer.InitDefault ((mkTokenSpan $1)) }
GCard :: { GCard }
GCard : {- empty -} { Language.Clafer.Front.AbsClafer.GCardEmpty noSpan }
      | 'xor' { Language.Clafer.Front.AbsClafer.GCardXor ((mkTokenSpan $1)) }
      | 'or' { Language.Clafer.Front.AbsClafer.GCardOr ((mkTokenSpan $1)) }
      | 'mux' { Language.Clafer.Front.AbsClafer.GCardMux ((mkTokenSpan $1)) }
      | 'opt' { Language.Clafer.Front.AbsClafer.GCardOpt ((mkTokenSpan $1)) }
      | NCard { Language.Clafer.Front.AbsClafer.GCardInterval ((mkCatSpan $1)) $1 }
Card :: { Card }
Card : {- empty -} { Language.Clafer.Front.AbsClafer.CardEmpty noSpan }
     | '?' { Language.Clafer.Front.AbsClafer.CardLone ((mkTokenSpan $1)) }
     | '+' { Language.Clafer.Front.AbsClafer.CardSome ((mkTokenSpan $1)) }
     | '*' { Language.Clafer.Front.AbsClafer.CardAny ((mkTokenSpan $1)) }
     | PosInteger { Language.Clafer.Front.AbsClafer.CardNum ((mkCatSpan $1)) $1 }
     | NCard { Language.Clafer.Front.AbsClafer.CardInterval ((mkCatSpan $1)) $1 }
NCard :: { NCard }
NCard : PosInteger '..' ExInteger { Language.Clafer.Front.AbsClafer.NCard ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
ExInteger :: { ExInteger }
ExInteger : '*' { Language.Clafer.Front.AbsClafer.ExIntegerAst ((mkTokenSpan $1)) }
          | PosInteger { Language.Clafer.Front.AbsClafer.ExIntegerNum ((mkCatSpan $1)) $1 }
Name :: { Name }
Name : ListModId { Language.Clafer.Front.AbsClafer.Path ((mkCatSpan $1)) $1 }
Exp :: { Exp }
Exp : Exp1 TransArrow Exp { Language.Clafer.Front.AbsClafer.TransitionExp ((mkCatSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3)) $1 $2 $3 }
    | Exp1 {  $1 }
Exp1 :: { Exp }
Exp1 : 'all' 'disj' Decl '|' Exp1 { Language.Clafer.Front.AbsClafer.EDeclAllDisj ((mkTokenSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4) >- (mkCatSpan $5)) $3 $5 }
     | 'all' Decl '|' Exp1 { Language.Clafer.Front.AbsClafer.EDeclAll ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $2 $4 }
     | Quant 'disj' Decl '|' Exp1 { Language.Clafer.Front.AbsClafer.EDeclQuantDisj ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3) >- (mkTokenSpan $4) >- (mkCatSpan $5)) $1 $3 $5 }
     | Quant Decl '|' Exp1 { Language.Clafer.Front.AbsClafer.EDeclQuant ((mkCatSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $1 $2 $4 }
     | 'if' Exp1 'then' Exp1 'else' Exp1 { Language.Clafer.Front.AbsClafer.EImpliesElse ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4) >- (mkTokenSpan $5) >- (mkCatSpan $6)) $2 $4 $6 }
     | 'let' VarBinding 'in' Exp1 { Language.Clafer.Front.AbsClafer.LetExp ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $2 $4 }
     | Exp2 {  $1 }
Exp2 :: { Exp }
Exp2 : 'never' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatNever ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3)) $2 $3 }
     | 'sometime' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatSometime ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3)) $2 $3 }
     | 'lonce' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatLessOrOnce ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3)) $2 $3 }
     | 'always' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatAlways ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkCatSpan $3)) $2 $3 }
     | Exp3 'must' 'precede' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatPrecede ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4) >- (mkCatSpan $5)) $1 $4 $5 }
     | Exp3 'must' 'follow' Exp3 PatternScope { Language.Clafer.Front.AbsClafer.TmpPatFollow ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4) >- (mkCatSpan $5)) $1 $4 $5 }
     | 'initially' Exp3 { Language.Clafer.Front.AbsClafer.TmpInitially ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
     | 'finally' Exp3 { Language.Clafer.Front.AbsClafer.TmpFinally ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
     | Exp3 {  $1 }
Exp3 :: { Exp }
Exp3 : Exp3 '<=>' Exp4 { Language.Clafer.Front.AbsClafer.EIff ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp4 {  $1 }
Exp4 :: { Exp }
Exp4 : Exp4 '=>' Exp5 { Language.Clafer.Front.AbsClafer.EImplies ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp5 {  $1 }
Exp5 :: { Exp }
Exp5 : Exp5 '||' Exp6 { Language.Clafer.Front.AbsClafer.EOr ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp6 {  $1 }
Exp6 :: { Exp }
Exp6 : Exp6 'xor' Exp7 { Language.Clafer.Front.AbsClafer.EXor ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp7 {  $1 }
Exp7 :: { Exp }
Exp7 : Exp7 '&&' Exp8 { Language.Clafer.Front.AbsClafer.EAnd ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp8 {  $1 }
Exp8 :: { Exp }
Exp8 : Exp8 'U' Exp9 { Language.Clafer.Front.AbsClafer.LtlU ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp8 'until' Exp9 { Language.Clafer.Front.AbsClafer.TmpUntil ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp9 {  $1 }
Exp9 :: { Exp }
Exp9 : Exp9 'W' Exp10 { Language.Clafer.Front.AbsClafer.LtlW ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp9 'weakuntil' Exp10 { Language.Clafer.Front.AbsClafer.TmpWUntil ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
     | Exp10 {  $1 }
Exp10 :: { Exp }
Exp10 : 'F' Exp10 { Language.Clafer.Front.AbsClafer.LtlF ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'eventually' Exp10 { Language.Clafer.Front.AbsClafer.TmpEventually ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'G' Exp10 { Language.Clafer.Front.AbsClafer.LtlG ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'globally' Exp10 { Language.Clafer.Front.AbsClafer.TmpGlobally ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'X' Exp10 { Language.Clafer.Front.AbsClafer.LtlX ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'next' Exp10 { Language.Clafer.Front.AbsClafer.TmpNext ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | Exp11 {  $1 }
Exp11 :: { Exp }
Exp11 : '!' Exp11 { Language.Clafer.Front.AbsClafer.ENeg ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | Exp12 {  $1 }
Exp15 :: { Exp }
Exp15 : Exp15 '<' Exp16 { Language.Clafer.Front.AbsClafer.ELt ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 '>' Exp16 { Language.Clafer.Front.AbsClafer.EGt ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 '=' Exp16 { Language.Clafer.Front.AbsClafer.EEq ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 '<=' Exp16 { Language.Clafer.Front.AbsClafer.ELte ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 '>=' Exp16 { Language.Clafer.Front.AbsClafer.EGte ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 '!=' Exp16 { Language.Clafer.Front.AbsClafer.ENeq ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 'in' Exp16 { Language.Clafer.Front.AbsClafer.EIn ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp15 'not' 'in' Exp16 { Language.Clafer.Front.AbsClafer.ENin ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $1 $4 }
      | Exp16 {  $1 }
Exp16 :: { Exp }
Exp16 : Quant Exp20 { Language.Clafer.Front.AbsClafer.EQuantExp ((mkCatSpan $1) >- (mkCatSpan $2)) $1 $2 }
      | Exp17 {  $1 }
Exp17 :: { Exp }
Exp17 : Exp17 '+' Exp18 { Language.Clafer.Front.AbsClafer.EAdd ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp17 '-' Exp18 { Language.Clafer.Front.AbsClafer.ESub ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp18 {  $1 }
Exp18 :: { Exp }
Exp18 : Exp18 '*' Exp19 { Language.Clafer.Front.AbsClafer.EMul ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp18 '/' Exp19 { Language.Clafer.Front.AbsClafer.EDiv ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp18 '%' Exp19 { Language.Clafer.Front.AbsClafer.ERem ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp19 {  $1 }
Exp19 :: { Exp }
Exp19 : 'max' Exp20 { Language.Clafer.Front.AbsClafer.EGMax ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'min' Exp20 { Language.Clafer.Front.AbsClafer.EGMin ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | Exp20 {  $1 }
Exp20 :: { Exp }
Exp20 : 'sum' Exp21 { Language.Clafer.Front.AbsClafer.ESum ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | 'product' Exp21 { Language.Clafer.Front.AbsClafer.EProd ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | '#' Exp21 { Language.Clafer.Front.AbsClafer.ECard ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | '-' Exp21 { Language.Clafer.Front.AbsClafer.EMinExp ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
      | Exp21 {  $1 }
Exp21 :: { Exp }
Exp21 : Exp21 '<:' Exp22 { Language.Clafer.Front.AbsClafer.EDomain ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp22 {  $1 }
Exp22 :: { Exp }
Exp22 : Exp22 ':>' Exp23 { Language.Clafer.Front.AbsClafer.ERange ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp23 {  $1 }
Exp23 :: { Exp }
Exp23 : Exp23 '++' Exp24 { Language.Clafer.Front.AbsClafer.EUnion ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp23 ',' Exp24 { Language.Clafer.Front.AbsClafer.EUnionCom ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp24 {  $1 }
Exp24 :: { Exp }
Exp24 : Exp24 '--' Exp25 { Language.Clafer.Front.AbsClafer.EDifference ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp25 {  $1 }
Exp25 :: { Exp }
Exp25 : Exp25 '**' Exp26 { Language.Clafer.Front.AbsClafer.EIntersection ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp26 {  $1 }
Exp26 :: { Exp }
Exp26 : Exp26 '&' Exp27 { Language.Clafer.Front.AbsClafer.EIntersectionDeprecated ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp26 '.' Exp27 { Language.Clafer.Front.AbsClafer.EJoin ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
      | Exp27 {  $1 }
Exp27 :: { Exp }
Exp27 : Name { Language.Clafer.Front.AbsClafer.ClaferId ((mkCatSpan $1)) $1 }
      | PosInteger { Language.Clafer.Front.AbsClafer.EInt ((mkCatSpan $1)) $1 }
      | PosDouble { Language.Clafer.Front.AbsClafer.EDouble ((mkCatSpan $1)) $1 }
      | PosReal { Language.Clafer.Front.AbsClafer.EReal ((mkCatSpan $1)) $1 }
      | PosString { Language.Clafer.Front.AbsClafer.EStr ((mkCatSpan $1)) $1 }
      | '(' Exp ')' {  $2 }
TransGuard :: { TransGuard }
TransGuard : Exp1 { Language.Clafer.Front.AbsClafer.TransGuard ((mkCatSpan $1)) $1 }
TransArrow :: { TransArrow }
TransArrow : '-->>' { Language.Clafer.Front.AbsClafer.SyncTransArrow ((mkTokenSpan $1)) }
           | '-[' TransGuard ']->>' { Language.Clafer.Front.AbsClafer.GuardedSyncTransArrow ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3)) $2 }
           | '-->' { Language.Clafer.Front.AbsClafer.NextTransArrow ((mkTokenSpan $1)) }
           | '-[' TransGuard ']->' { Language.Clafer.Front.AbsClafer.GuardedNextTransArrow ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3)) $2 }
PatternScope :: { PatternScope }
PatternScope : 'before' Exp11 { Language.Clafer.Front.AbsClafer.PatScopeBefore ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
             | 'after' Exp11 { Language.Clafer.Front.AbsClafer.PatScopeAfter ((mkTokenSpan $1) >- (mkCatSpan $2)) $2 }
             | 'between' Exp11 'and' Exp11 { Language.Clafer.Front.AbsClafer.PatScopeBetweenAnd ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $2 $4 }
             | 'after' Exp11 'until' Exp11 { Language.Clafer.Front.AbsClafer.PatScopeAfterUntil ((mkTokenSpan $1) >- (mkCatSpan $2) >- (mkTokenSpan $3) >- (mkCatSpan $4)) $2 $4 }
             | {- empty -} { Language.Clafer.Front.AbsClafer.PatScopeEmpty noSpan }
Decl :: { Decl }
Decl : ListLocId ':' Exp21 { Language.Clafer.Front.AbsClafer.Decl ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
VarBinding :: { VarBinding }
VarBinding : LocId '=' Name { Language.Clafer.Front.AbsClafer.VarBinding ((mkCatSpan $1) >- (mkTokenSpan $2) >- (mkCatSpan $3)) $1 $3 }
Quant :: { Quant }
Quant : 'no' { Language.Clafer.Front.AbsClafer.QuantNo ((mkTokenSpan $1)) }
      | 'not' { Language.Clafer.Front.AbsClafer.QuantNot ((mkTokenSpan $1)) }
      | 'lone' { Language.Clafer.Front.AbsClafer.QuantLone ((mkTokenSpan $1)) }
      | 'one' { Language.Clafer.Front.AbsClafer.QuantOne ((mkTokenSpan $1)) }
      | 'some' { Language.Clafer.Front.AbsClafer.QuantSome ((mkTokenSpan $1)) }
EnumId :: { EnumId }
EnumId : PosIdent { Language.Clafer.Front.AbsClafer.EnumIdIdent ((mkCatSpan $1)) $1 }
ModId :: { ModId }
ModId : PosIdent { Language.Clafer.Front.AbsClafer.ModIdIdent ((mkCatSpan $1)) $1 }
LocId :: { LocId }
LocId : PosIdent { Language.Clafer.Front.AbsClafer.LocIdIdent ((mkCatSpan $1)) $1 }
ListDeclaration :: { [Declaration] }
ListDeclaration : {- empty -} { []  }
                | ListDeclaration Declaration { flip (:)  $1 $2 }
ListEnumId :: { [EnumId] }
ListEnumId : EnumId { (:[])  $1 }
           | EnumId '|' ListEnumId { (:)  $1 $3 }
ListElement :: { [Element] }
ListElement : {- empty -} { []  }
            | ListElement Element { flip (:)  $1 $2 }
ListExp :: { [Exp] }
ListExp : {- empty -} { []  } | ListExp Exp { flip (:)  $1 $2 }
ListTempModifier :: { [TempModifier] }
ListTempModifier : {- empty -} { []  }
                 | ListTempModifier TempModifier { flip (:)  $1 $2 }
ListLocId :: { [LocId] }
ListLocId : LocId { (:[])  $1 }
          | LocId ';' ListLocId { (:)  $1 $3 }
ListModId :: { [ModId] }
ListModId : ModId { (:[])  $1 }
          | ModId '\\' ListModId { (:)  $1 $3 }
Exp12 :: { Exp }
Exp12 : Exp13 {  $1 }
Exp13 :: { Exp }
Exp13 : Exp14 {  $1 }
Exp14 :: { Exp }
Exp14 : Exp15 {  $1 }
{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad (pp ts) $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens

gp x@(PT (Pn _ l c) _) = Span (Pos (toInteger l) (toInteger c)) (Pos (toInteger l) (toInteger c + toInteger (length $ prToken x)))
pp (PT (Pn _ l c) _ :_) = Pos (toInteger l) (toInteger c)
pp (Err (Pn _ l c) :_) = Pos (toInteger l) (toInteger c)
pp _ = error "EOF"

mkCatSpan :: (Spannable c) => c -> Span
mkCatSpan = getSpan

mkTokenSpan :: Token -> Span
mkTokenSpan = gp
}
