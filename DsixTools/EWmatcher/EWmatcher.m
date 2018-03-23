(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



Print[StyleForm["EWmatcher","Section",FontSize->22,Bold]];
Print[StyleForm["DsixTools module for the matching at the electroweak scale",FontSize->16]];
EWmatcherDir=DsixToolsDir<>"EWmatcher/";
EWmatcher=True;
InitializeEWmatcherInput;


(* Function to apply a biunitary transformation *)
Biunitary[mat_]:=Block[{CPVchanged,dim,mat2L,mat2R,eigen,RotL,RotR,RotLPre,RotRPre,copy,MatrixPhase,phase},

If[SquareMatrixQ[mat],

If[!ValueQ[CPV],
If[Min[Im[mat]]==0&&Max[Im[mat]]==0,CPV=0;,CPV=1;]; (* Check if the matrix is real or complex *)
CPVchanged=True;
];

dim=Length[mat];

mat2L=mat.H[mat];
mat2R=H[mat].mat;

eigen=Sqrt[Eigenvalues[mat2L]];

RotLPre=Eigenvectors[mat2L];
RotRPre=Eigenvectors[mat2R];

(* Reorder eigenvectors *)
copy=RotLPre;
Do[RotLPre[[i,All]]=copy[[dim+1-i,All]];,{i,1,dim}];

copy=RotRPre;
Do[RotRPre[[i,All]]=copy[[dim+1-i,All]];,{i,1,dim}];

(* Absorb phases in R eigenvectors *)
MatrixPhase=CC[RotLPre].mat.Transpose[RotRPre];
Do[
phase=MatrixPhase[[i,i]]/Abs[MatrixPhase[[i,i]]];
RotRPre[[i,All]]=CC[phase] RotRPre[[i,All]];
,{i,1,dim}];

(* Special for symmetric matrices *)
(* Absorb phases in R eigenvectors again *)
If[Abs[RotLPre]==Abs[RotRPre],
MatrixPhase=RotRPre.mat.Transpose[RotRPre];
Do[
phase=MatrixPhase[[i,i]]/Abs[MatrixPhase[[i,i]]];
RotRPre[[i,All]]=Sqrt[CC[phase]] RotRPre[[i,All]];
,{i,1,dim}];
RotLPre=RotRPre;
];

(* Transpose *)
RotL=Transpose[RotLPre];
RotR=Transpose[RotRPre];

If[CPVchanged,Clear[CPV];];

Return[{eigen,RotL,RotR}];

,

Message[Biunitary::NotSquare,mat];
];

];


(* Routine to obtain the CKM matrix following the standard phase convention *)
StandardCKM:=Block[{CKM0,\[Alpha]1,\[Alpha]2,\[Alpha]3,\[Beta]1,\[Beta]2,s13,c13,s12,c12,s23,c23,\[Gamma],a,\[Delta],K\[Alpha],K\[Beta],ULnew,URnew,DLnew,DRnew},

CKM0=H[UL].DL;

\[Alpha]1=\[Delta]+Arg[CKM0[[1,3]]];
\[Alpha]2=Arg[CKM0[[2,3]]];
\[Alpha]3=Arg[CKM0[[3,3]]];

\[Beta]1=\[Delta]+Arg[CKM0[[1,3]]]-Arg[CKM0[[1,1]]];
\[Beta]2=\[Delta]+Arg[CKM0[[1,3]]]-Arg[CKM0[[1,2]]];

(* Fixing \[Delta] to the standard CKM phase *)
s13=Abs[CKM0[[1,3]]];
c13=Sqrt[1-s13^2];
c12=Abs[CKM0[[1,2]]]/c13;
s12=Sqrt[1-c12^2];
s23=Abs[CKM0[[2,3]]]/c13;
c23=Sqrt[1-s23^2];
\[Gamma]=Arg[-CKM0[[1,1]]CC[CKM0[[1,3]]]/(CKM0[[2,1]]CC[CKM0[[2,3]]])];
a=c12 s13 s23/(s12 c23);
\[Delta]=If[Cos[\[Gamma]]>0,2ArcTan[(1-Sqrt[1-(a^2-1)Tan[\[Gamma]]^2])/((a-1)Tan[\[Gamma]])],2ArcTan[(1+Sqrt[1-(a^2-1)Tan[\[Gamma]]^2])/((a-1)Tan[\[Gamma]])]];

K\[Alpha]=DiagonalMatrix[{Exp[I \[Alpha]1],Exp[I \[Alpha]2],Exp[I \[Alpha]3]}];
K\[Beta]=DiagonalMatrix[{Exp[I \[Beta]1],Exp[I \[Beta]2],1}];

ULnew=UL.K\[Alpha];
URnew=UR.K\[Alpha];
DLnew=DL.K\[Beta];
DRnew=DR.K\[Beta];

Return[{ULnew,URnew,DLnew,DRnew}];

];


(* Routine to obtain the PMNS matrix following the standard phase convention. Based on Appendix A.2 of hep-ph/0305273 *)
StandardPMNS:=Block[{PMNS0,\[Theta]12,\[Theta]23,\[Theta]13,\[Delta],\[Delta]e,\[Delta]\[Mu],\[Delta]\[Tau],\[CurlyPhi]1,\[CurlyPhi]2,s13,c13,s12,c12,s23,c23,U4term,Kmat,ELnew,ERnew},

PMNS0=H[EL].NL;

\[Theta]13=ArcSin[Abs[PMNS0[[1,3]]]];
\[Theta]12=ArcTan[Abs[PMNS0[[1,2]]/PMNS0[[1,1]]]];
\[Theta]23=ArcTan[Abs[PMNS0[[2,3]]/PMNS0[[3,3]]]];
s12=Sin[\[Theta]12];
c12=Cos[\[Theta]12];
s23=Sin[\[Theta]23];
c23=Cos[\[Theta]23];
s13=Sin[\[Theta]13];
c13=Cos[\[Theta]13];
\[Delta]\[Mu]=Arg[PMNS0[[2,3]]];
\[Delta]\[Tau]=Arg[PMNS0[[3,3]]];
U4term=Conjugate[PMNS0[[1,1]]]PMNS0[[1,3]]PMNS0[[3,1]]Conjugate[PMNS0[[3,3]]];
\[Delta]=If[s12!=0&&s23!=0&&s13!=0,-Arg[(U4term/(c12 c13^2 c23 s13)+c12 c23 s13)/(s12 s23)],0];
\[Delta]e= Arg[Exp[I \[Delta]] PMNS0[[1,3]]];
\[CurlyPhi]1=2 Arg[Exp[I \[Delta]e] Conjugate[PMNS0[[1,1]]]];
\[CurlyPhi]2=2 Arg[Exp[I \[Delta]e] Conjugate[PMNS0[[1,2]]]];

Kmat=DiagonalMatrix[{Exp[I \[Delta]e],Exp[I \[Delta]\[Mu]],Exp[I \[Delta]\[Tau]]}];
ELnew=EL.Kmat;
ERnew=ER.Kmat;

Return[{ELnew,ERnew}];

];


(* Routine to diagonalize all fermion mass matrices*)
DiagonalizeFermions:=Block[{},

(* QUARKS *)

(* Up quarks *)
GuEW=Table[GU[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
Cu\[CurlyPhi]EW=Table[U\[CurlyPhi][i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
mu=v/Sqrt[2](GuEW-1/2v^2/HIGHSCALE^2Cu\[CurlyPhi]EW);
mu=SetPrecision[mu,10];
mudiag=Biunitary[mu][[1]];
UL=Biunitary[mu][[2]];
UR=Biunitary[mu][[3]];

(* Down quarks *)
GdEW=Table[GD[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
Cd\[CurlyPhi]EW=Table[D\[CurlyPhi][i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
md=v/Sqrt[2](GdEW-1/2v^2/HIGHSCALE^2Cd\[CurlyPhi]EW);
md=SetPrecision[md,10];
mddiag=Biunitary[md][[1]];
DL=Biunitary[md][[2]];
DR=Biunitary[md][[3]];

(* Rephasing to obtain the CKM matrix with standard phase convention *)
NewRotationsCKM=StandardCKM;
UL=NewRotationsCKM[[1]];
UR=NewRotationsCKM[[2]];
DL=NewRotationsCKM[[3]];
DR=NewRotationsCKM[[4]];

(* LEPTONS *)

(* Charged leptons *)
GeEW=Table[GE[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
Ce\[CurlyPhi]EW=Table[E\[CurlyPhi][i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
me=v/Sqrt[2](GeEW-1/2v^2/HIGHSCALE^2Ce\[CurlyPhi]EW);
me=SetPrecision[me,10];
mediag=Biunitary[me][[1]];
EL=Biunitary[me][[2]];
ER=Biunitary[me][[3]];

(* Neutrinos *)
Cll\[CurlyPhi]\[CurlyPhi]EW=Table[LL\[CurlyPhi]\[CurlyPhi][i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
m\[Nu]=-v^2/(2HIGHSCALE)Cll\[CurlyPhi]\[CurlyPhi]EW;

(* Diagonalization and rephasing to obtain the PMNS matrix with standard phase convention *)
(* This is only done if neutrinos are massive *)
If[Max[Abs[m\[Nu]]]!=0,
m\[Nu]=SetPrecision[m\[Nu],10];
m\[Nu]diag=Biunitary[m\[Nu]][[1]];
NL=Biunitary[m\[Nu]][[3]];
NR=NL;
NewRotationsPMNS=StandardPMNS;
EL=NewRotationsPMNS[[1]];
ER=NewRotationsPMNS[[2]];
,
NL=DiagonalMatrix[{1,1,1}];
NR=DiagonalMatrix[{1,1,1}];
];

(* Useful definitions *)
ULh=H[UL];
URh=H[UR];
DLh=H[DL];
DRh=H[DR];
ELh=H[EL];
ERh=H[ER];
NLh=H[NL];
NRh=H[NR];

(* CKM matrix *)
CKM=ULh.DL;
gen[u]=1;
gen[c]=2;
gen[t]=3;
gen[d]=1;
gen[s]=2;
gen[b]=3;
VCKM[a_,b_]:=CKM[[gen[a],gen[b]]];
VV[a_,b_,c_,d_]:=CC[VCKM[a,b]] VCKM[c,d];

(* PMNS matrix *)
PMNS=ELh.NL;
gen[\[Nu]1]=1;
gen[\[Nu]2]=2;
gen[\[Nu]3]=3;
gen[e]=1;
gen[\[Mu]]=2;
gen[\[Tau]]=3;
VPMNS[a_,b_]:=PMNS[[gen[a],gen[b]]];
VVPMNS[a_,b_,c_,d_]:=CC[PMNS[a,b]] PMNS[c,d];

];


(* Routine to fix the SMEFT WCs at the EW scale *)
WCsatEW:=Block[{},

(* \[Psi]^2\[CurlyPhi]^3 *)
(* Already fixed in DiagonalizeFermions *)

(* \[Psi]^2X \[CurlyPhi] *)
CeWEW=Table[EW[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CeBEW=Table[EB[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CuGEW=Table[UG[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CuWEW=Table[UW[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CuBEW=Table[UB[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CdGEW=Table[DG[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CdWEW=Table[DW[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
CdBEW=Table[DB[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;

(* \[Psi]^2\[CurlyPhi]^2D *)
C\[CurlyPhi]l1EW=Table[\[CurlyPhi]L1[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]l3EW=Table[\[CurlyPhi]L3[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]eEW=Table[\[CurlyPhi]E[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]q1EW=Table[\[CurlyPhi]Q1[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]q3EW=Table[\[CurlyPhi]Q3[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]uEW=Table[\[CurlyPhi]U[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]dEW=Table[\[CurlyPhi]D[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;
C\[CurlyPhi]udEW=Table[\[CurlyPhi]UD[i,j],{i,1,3},{j,1,3}]//inputEWmatcher;

(* LL LL *)
CllEW=Table[LL[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqq1EW=Table[QQ1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqq3EW=Table[QQ3[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Clq1EW=Table[LQ1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Clq3EW=Table[LQ3[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* RR RR *)
CeeEW=Table[EE[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CuuEW=Table[UU[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CddEW=Table[DD[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CeuEW=Table[EU[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CedEW=Table[ED[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cud1EW=Table[UD1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cud8EW=Table[UD8[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* LL RR *)
CleEW=Table[LE[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CluEW=Table[LU[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CldEW=Table[LD[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CqeEW=Table[QE[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqu1EW=Table[QU1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqu8EW=Table[QU8[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqd1EW=Table[QD1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cqd8EW=Table[QD8[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* LR RL *)
CledqEW=Table[LEDQ[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* LR LR *)
Cquqd1EW=Table[QUQD1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Cquqd8EW=Table[QUQD8[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Clequ1EW=Table[LEQU1[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
Clequ3EW=Table[LEQU3[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* B-violating *)
CduqlEW=Table[DUQL[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CqqueEW=Table[QQUE[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CqqqlEW=Table[QQQL[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;
CduueEW=Table[DUUE[i,j,k,l],{i,1,3},{j,1,3},{k,1,3},{l,1,3}]//inputEWmatcher;

(* dim-5 *)
(* Already fixed in DiagonalizeFermions *)

];


(* Rotate SMEFT to mass basis *)
RotateToMassBasis:=Block[{},

MyPrint["Rotating SMEFT WCs to mass basis"];
DiagonalizeFermions;
WCsatEW;

(* Rotate WCs *)
Get[EWmatcherDir<>"lowBasis.m"];

Cu\[CurlyPhi]MB=Cu\[CurlyPhi]tilde;
Cd\[CurlyPhi]MB=Cd\[CurlyPhi]tilde;
Ce\[CurlyPhi]MB=Ce\[CurlyPhi]tilde;
CeWMB=CeWtilde;
CeBMB=CeBtilde;
CuGMB=CuGtilde;
CuWMB=CuWtilde;
CuBMB=CuBtilde;
CdGMB=CdGtilde;
CdWMB=CdWtilde;
CdBMB=CdBtilde;
C\[CurlyPhi]l1MB=C\[CurlyPhi]l1tilde;
C\[CurlyPhi]l3MB=C\[CurlyPhi]l3tilde;
C\[CurlyPhi]eMB=C\[CurlyPhi]etilde;
C\[CurlyPhi]q1MB=C\[CurlyPhi]q1tilde;
C\[CurlyPhi]q3MB=C\[CurlyPhi]q3tilde;
C\[CurlyPhi]uMB=C\[CurlyPhi]utilde;
C\[CurlyPhi]dMB=C\[CurlyPhi]dtilde;
C\[CurlyPhi]udMB=C\[CurlyPhi]udtilde;
CllMB=Clltilde;
Cqq1MB=Cqq1tilde;
Cqq3MB=Cqq3tilde;
Clq1MB=Clq1tilde;
Clq3MB=Clq3tilde;
CeeMB=Ceetilde;
CuuMB=Cuutilde;
CddMB=Cddtilde;
CeuMB=Ceutilde;
CedMB=Cedtilde;
Cud1MB=Cud1tilde;
Cud8MB=Cud8tilde;
CleMB=Cletilde;
CluMB=Clutilde;
CldMB=Cldtilde;
CqeMB=Cqetilde;
Cqu1MB=Cqu1tilde;
Cqu8MB=Cqu8tilde;
Cqd1MB=Cqd1tilde;
Cqd8MB=Cqd8tilde;
CledqMB=Cledqtilde;
Cquqd1MB=Cquqd1tilde;
Cquqd8MB=Cquqd8tilde;
Clequ1MB=Clequ1tilde;
Clequ3MB=Clequ3tilde;
CduqlMB=Cduqltilde;
CqqueMB=Cqquetilde;
CqqqlMB=Cqqqltilde;
CduueMB=Cduuetilde;
Cll\[CurlyPhi]\[CurlyPhi]MB=Cll\[CurlyPhi]\[CurlyPhi]tilde;

ToMassBasis={U\[CurlyPhi][r_,s_]:>Cu\[CurlyPhi]MB[[r,s]],D\[CurlyPhi][r_,s_]:>Cd\[CurlyPhi]MB[[r,s]],E\[CurlyPhi][r_,s_]:>Ce\[CurlyPhi]MB[[r,s]],EW[r_,s_]:>CeWMB[[r,s]],EB[r_,s_]:>CeBMB[[r,s]],UG[r_,s_]:>CuGMB[[r,s]],UW[r_,s_]:>CuWMB[[r,s]],UB[r_,s_]:>CuBMB[[r,s]],DG[r_,s_]:>CdGMB[[r,s]],DW[r_,s_]:>CdWMB[[r,s]],DB[r_,s_]:>CdBMB[[r,s]],\[CurlyPhi]L1[r_,s_]:>C\[CurlyPhi]l1MB[[r,s]],\[CurlyPhi]L3[r_,s_]:>C\[CurlyPhi]l3MB[[r,s]],\[CurlyPhi]E[r_,s_]:>C\[CurlyPhi]eMB[[r,s]],\[CurlyPhi]Q1[r_,s_]:>C\[CurlyPhi]q1MB[[r,s]],\[CurlyPhi]Q3[r_,s_]:>C\[CurlyPhi]q3MB[[r,s]],\[CurlyPhi]U[r_,s_]:>C\[CurlyPhi]uMB[[r,s]],\[CurlyPhi]D[r_,s_]:>C\[CurlyPhi]dMB[[r,s]],\[CurlyPhi]UD[r_,s_]:>C\[CurlyPhi]udMB[[r,s]],LL[p_,r_,s_,t_]:>CllMB[[p,r,s,t]],QQ1[p_,r_,s_,t_]:>Cqq1MB[[p,r,s,t]],QQ3[p_,r_,s_,t_]:>Cqq3MB[[p,r,s,t]],LQ1[p_,r_,s_,t_]:>Clq1MB[[p,r,s,t]],LQ3[p_,r_,s_,t_]:>Clq3MB[[p,r,s,t]],EE[p_,r_,s_,t_]:>CeeMB[[p,r,s,t]],UU[p_,r_,s_,t_]:>CuuMB[[p,r,s,t]],DD[p_,r_,s_,t_]:>CddMB[[p,r,s,t]],EU[p_,r_,s_,t_]:>CeuMB[[p,r,s,t]],ED[p_,r_,s_,t_]:>CedMB[[p,r,s,t]],UD1[p_,r_,s_,t_]:>Cud1MB[[p,r,s,t]],UD8[p_,r_,s_,t_]:>Cud8MB[[p,r,s,t]],LE[p_,r_,s_,t_]:>CleMB[[p,r,s,t]],LU[p_,r_,s_,t_]:>CluMB[[p,r,s,t]],LD[p_,r_,s_,t_]:>CldMB[[p,r,s,t]],QE[p_,r_,s_,t_]:>CqeMB[[p,r,s,t]],QU1[p_,r_,s_,t_]:>Cqu1MB[[p,r,s,t]],QU8[p_,r_,s_,t_]:>Cqu8MB[[p,r,s,t]],QD1[p_,r_,s_,t_]:>Cqd1MB[[p,r,s,t]],QD8[p_,r_,s_,t_]:>Cqd8MB[[p,r,s,t]],LEDQ[p_,r_,s_,t_]:>CledqMB[[p,r,s,t]],QUQD1[p_,r_,s_,t_]:>Cquqd1MB[[p,r,s,t]],QUQD8[p_,r_,s_,t_]:>Cquqd8MB[[p,r,s,t]],LEQU1[p_,r_,s_,t_]:>Clequ1MB[[p,r,s,t]],LEQU3[p_,r_,s_,t_]:>Clequ3MB[[p,r,s,t]],DUQL[p_,r_,s_,t_]:>CduqlMB[[p,r,s,t]],QQUE[p_,r_,s_,t_]:>CqqueMB[[p,r,s,t]],QQQL[p_,r_,s_,t_]:>CqqqlMB[[p,r,s,t]],DUUE[p_,r_,s_,t_]:>CduueMB[[p,r,s,t]],LL\[CurlyPhi]\[CurlyPhi][r_,s_]:>Cll\[CurlyPhi]\[CurlyPhi]MB[[r,s]]};
WCsInMB=Parameters/.ToMassBasis;

];


(* Rotate SMEFT to WCxf basis *)
RotateToWCXFBasis:=Block[{},

MyPrint["Rotating SMEFT WCs to WCxf basis"];
DiagonalizeFermions;
WCsatEW;

(* Save rotations and impose gauge invariant relations *)
ULtemp=UL;
NLtemp=NL;
UL=DL;
ULh=DLh;
NL=EL;
NLh=ELh;

(* Rotate WCs *)
Get[EWmatcherDir<>"lowBasis.m"];

Cu\[CurlyPhi]WCXF=Cu\[CurlyPhi]tilde;
Cd\[CurlyPhi]WCXF=Cd\[CurlyPhi]tilde;
Ce\[CurlyPhi]WCXF=Ce\[CurlyPhi]tilde;
CeWWCXF=CeWtilde;
CeBWCXF=CeBtilde;
CuGWCXF=CuGtilde;
CuWWCXF=CuWtilde;
CuBWCXF=CuBtilde;
CdGWCXF=CdGtilde;
CdWWCXF=CdWtilde;
CdBWCXF=CdBtilde;
C\[CurlyPhi]l1WCXF=C\[CurlyPhi]l1tilde;
C\[CurlyPhi]l3WCXF=C\[CurlyPhi]l3tilde;
C\[CurlyPhi]eWCXF=C\[CurlyPhi]etilde;
C\[CurlyPhi]q1WCXF=C\[CurlyPhi]q1tilde;
C\[CurlyPhi]q3WCXF=C\[CurlyPhi]q3tilde;
C\[CurlyPhi]uWCXF=C\[CurlyPhi]utilde;
C\[CurlyPhi]dWCXF=C\[CurlyPhi]dtilde;
C\[CurlyPhi]udWCXF=C\[CurlyPhi]udtilde;
CllWCXF=Clltilde;
Cqq1WCXF=Cqq1tilde;
Cqq3WCXF=Cqq3tilde;
Clq1WCXF=Clq1tilde;
Clq3WCXF=Clq3tilde;
CeeWCXF=Ceetilde;
CuuWCXF=Cuutilde;
CddWCXF=Cddtilde;
CeuWCXF=Ceutilde;
CedWCXF=Cedtilde;
Cud1WCXF=Cud1tilde;
Cud8WCXF=Cud8tilde;
CleWCXF=Cletilde;
CluWCXF=Clutilde;
CldWCXF=Cldtilde;
CqeWCXF=Cqetilde;
Cqu1WCXF=Cqu1tilde;
Cqu8WCXF=Cqu8tilde;
Cqd1WCXF=Cqd1tilde;
Cqd8WCXF=Cqd8tilde;
CledqWCXF=Cledqtilde;
Cquqd1WCXF=Cquqd1tilde;
Cquqd8WCXF=Cquqd8tilde;
Clequ1WCXF=Clequ1tilde;
Clequ3WCXF=Clequ3tilde;
CduqlWCXF=Cduqltilde;
CqqueWCXF=Cqquetilde;
CqqqlWCXF=Cqqqltilde;
CduueWCXF=Cduuetilde;
Cll\[CurlyPhi]\[CurlyPhi]WCXF=Cll\[CurlyPhi]\[CurlyPhi]tilde;

ToWCXFBasis={U\[CurlyPhi][r_,s_]:>Cu\[CurlyPhi]WCXF[[r,s]],D\[CurlyPhi][r_,s_]:>Cd\[CurlyPhi]WCXF[[r,s]],E\[CurlyPhi][r_,s_]:>Ce\[CurlyPhi]WCXF[[r,s]],EW[r_,s_]:>CeWWCXF[[r,s]],EB[r_,s_]:>CeBWCXF[[r,s]],UG[r_,s_]:>CuGWCXF[[r,s]],UW[r_,s_]:>CuWWCXF[[r,s]],UB[r_,s_]:>CuBWCXF[[r,s]],DG[r_,s_]:>CdGWCXF[[r,s]],DW[r_,s_]:>CdWWCXF[[r,s]],DB[r_,s_]:>CdBWCXF[[r,s]],\[CurlyPhi]L1[r_,s_]:>C\[CurlyPhi]l1WCXF[[r,s]],\[CurlyPhi]L3[r_,s_]:>C\[CurlyPhi]l3WCXF[[r,s]],\[CurlyPhi]E[r_,s_]:>C\[CurlyPhi]eWCXF[[r,s]],\[CurlyPhi]Q1[r_,s_]:>C\[CurlyPhi]q1WCXF[[r,s]],\[CurlyPhi]Q3[r_,s_]:>C\[CurlyPhi]q3WCXF[[r,s]],\[CurlyPhi]U[r_,s_]:>C\[CurlyPhi]uWCXF[[r,s]],\[CurlyPhi]D[r_,s_]:>C\[CurlyPhi]dWCXF[[r,s]],\[CurlyPhi]UD[r_,s_]:>C\[CurlyPhi]udWCXF[[r,s]],LL[p_,r_,s_,t_]:>CllWCXF[[p,r,s,t]],QQ1[p_,r_,s_,t_]:>Cqq1WCXF[[p,r,s,t]],QQ3[p_,r_,s_,t_]:>Cqq3WCXF[[p,r,s,t]],LQ1[p_,r_,s_,t_]:>Clq1WCXF[[p,r,s,t]],LQ3[p_,r_,s_,t_]:>Clq3WCXF[[p,r,s,t]],EE[p_,r_,s_,t_]:>CeeWCXF[[p,r,s,t]],UU[p_,r_,s_,t_]:>CuuWCXF[[p,r,s,t]],DD[p_,r_,s_,t_]:>CddWCXF[[p,r,s,t]],EU[p_,r_,s_,t_]:>CeuWCXF[[p,r,s,t]],ED[p_,r_,s_,t_]:>CedWCXF[[p,r,s,t]],UD1[p_,r_,s_,t_]:>Cud1WCXF[[p,r,s,t]],UD8[p_,r_,s_,t_]:>Cud8WCXF[[p,r,s,t]],LE[p_,r_,s_,t_]:>CleWCXF[[p,r,s,t]],LU[p_,r_,s_,t_]:>CluWCXF[[p,r,s,t]],LD[p_,r_,s_,t_]:>CldWCXF[[p,r,s,t]],QE[p_,r_,s_,t_]:>CqeWCXF[[p,r,s,t]],QU1[p_,r_,s_,t_]:>Cqu1WCXF[[p,r,s,t]],QU8[p_,r_,s_,t_]:>Cqu8WCXF[[p,r,s,t]],QD1[p_,r_,s_,t_]:>Cqd1WCXF[[p,r,s,t]],QD8[p_,r_,s_,t_]:>Cqd8WCXF[[p,r,s,t]],LEDQ[p_,r_,s_,t_]:>CledqWCXF[[p,r,s,t]],QUQD1[p_,r_,s_,t_]:>Cquqd1WCXF[[p,r,s,t]],QUQD8[p_,r_,s_,t_]:>Cquqd8WCXF[[p,r,s,t]],LEQU1[p_,r_,s_,t_]:>Clequ1WCXF[[p,r,s,t]],LEQU3[p_,r_,s_,t_]:>Clequ3WCXF[[p,r,s,t]],DUQL[p_,r_,s_,t_]:>CduqlWCXF[[p,r,s,t]],QQUE[p_,r_,s_,t_]:>CqqueWCXF[[p,r,s,t]],QQQL[p_,r_,s_,t_]:>CqqqlWCXF[[p,r,s,t]],DUUE[p_,r_,s_,t_]:>CduueWCXF[[p,r,s,t]],LL\[CurlyPhi]\[CurlyPhi][r_,s_]:>Cll\[CurlyPhi]\[CurlyPhi]WCXF[[r,s]]};
WCsInWCXF=Parameters/.ToWCXFBasis;

(* Back to the original rotations *)
UL=ULtemp;
ULh=H[UL];
NL=NLtemp;
NLh=H[NL];

];


(* Matching to effective operators commonly used in phenomenology *)
ApplyEWmatching:=Block[{},

MyPrint["Matching to low energy operators"];
Get[EWmatcherDir<>"lowMatching.m"];

];


EWmatch={CBS2[1]->MatchCBS2[1],CBS2[2]->MatchCBS2[2],CBS2[3]->MatchCBS2[3],CBS2[4]->MatchCBS2[4],CBS2[5]->MatchCBS2[5],CBS2p[1]->MatchCBS2p[1],CBS2p[2]->MatchCBS2p[2],CBS2p[3]->MatchCBS2p[3],
CBC1[e][1]->MatchCBC1[e][1],CBC1[e][5]->MatchCBC1[e][5],CBC1p[e][1]->MatchCBC1p[e][1],CBC1p[e][5]->MatchCBC1p[e][5],CBC1p[e][7]->MatchCBC1p[e][7],
CBC1[\[Mu]][1]->MatchCBC1[\[Mu]][1],CBC1[\[Mu]][5]->MatchCBC1[\[Mu]][5],CBC1p[\[Mu]][1]->MatchCBC1p[\[Mu]][1],CBC1p[\[Mu]][5]->MatchCBC1p[\[Mu]][5],CBC1p[\[Mu]][7]->MatchCBC1p[\[Mu]][7],
CBC1[\[Tau]][1]->MatchCBC1[\[Tau]][1],CBC1[\[Tau]][5]->MatchCBC1[\[Tau]][5],CBC1p[\[Tau]][1]->MatchCBC1p[\[Tau]][1],CBC1p[\[Tau]][5]->MatchCBC1p[\[Tau]][5],CBC1p[\[Tau]][7]->MatchCBC1p[\[Tau]][7],
CBS1[u][1]->MatchCBS1[u][1],CBS1[u][2]->MatchCBS1[u][2],CBS1[u][3]->MatchCBS1[u][3],CBS1[u][4]->MatchCBS1[u][4],CBS1[u][5]->MatchCBS1[u][5],CBS1[u][6]->MatchCBS1[u][6],CBS1[u][7]->MatchCBS1[u][7],CBS1[u][8]->MatchCBS1[u][8],CBS1[u][9]->MatchCBS1[u][9],CBS1[u][10]->MatchCBS1[u][10],CBS1[d][1]->MatchCBS1[d][1],CBS1[d][2]->MatchCBS1[d][2],CBS1[d][3]->MatchCBS1[d][3],CBS1[d][4]->MatchCBS1[d][4],CBS1[d][5]->MatchCBS1[d][5],CBS1[d][6]->MatchCBS1[d][6],CBS1[d][7]->MatchCBS1[d][7],CBS1[d][8]->MatchCBS1[d][8],CBS1[d][9]->MatchCBS1[d][9],CBS1[d][10]->MatchCBS1[d][10],CBS1[c][1]->MatchCBS1[c][1],CBS1[c][2]->MatchCBS1[c][2],CBS1[c][3]->MatchCBS1[c][3],CBS1[c][4]->MatchCBS1[c][4],CBS1[c][5]->MatchCBS1[c][5],CBS1[c][6]->MatchCBS1[c][6],CBS1[c][7]->MatchCBS1[c][7],CBS1[c][8]->MatchCBS1[c][8],CBS1[c][9]->MatchCBS1[c][9],CBS1[c][10]->MatchCBS1[c][10],CBS1[s][1]->MatchCBS1[s][1],CBS1[s][3]->MatchCBS1[s][3],CBS1[s][5]->MatchCBS1[s][5],CBS1[s][7]->MatchCBS1[s][7],CBS1[s][9]->MatchCBS1[s][9],CBS1[b][1]->MatchCBS1[b][1],CBS1[b][3]->MatchCBS1[b][3],CBS1[b][5]->MatchCBS1[b][5],CBS1[b][7]->MatchCBS1[b][7],CBS1[b][9]->MatchCBS1[b][9],CBS1[M][7]->MatchCBS1[M][7],CBS1[M][8]->MatchCBS1[M][8],CBS1[e][1]->MatchCBS1[e][1],CBS1[e][3]->MatchCBS1[e][3],CBS1[e][5]->MatchCBS1[e][5],CBS1[e][7]->MatchCBS1[e][7],CBS1[e][9]->MatchCBS1[e][9],CBS1[\[Mu]][1]->MatchCBS1[\[Mu]][1],CBS1[\[Mu]][3]->MatchCBS1[\[Mu]][3],CBS1[\[Mu]][5]->MatchCBS1[\[Mu]][5],CBS1[\[Mu]][7]->MatchCBS1[\[Mu]][7],CBS1[\[Mu]][9]->MatchCBS1[\[Mu]][9],CBS1[\[Tau]][1]->MatchCBS1[\[Tau]][1],CBS1[\[Tau]][3]->MatchCBS1[\[Tau]][3],CBS1[\[Tau]][5]->MatchCBS1[\[Tau]][5],CBS1[\[Tau]][7]->MatchCBS1[\[Tau]][7],CBS1[\[Tau]][9]->MatchCBS1[\[Tau]][9],CBS1p[u][1]->MatchCBS1p[u][1],CBS1p[u][2]->MatchCBS1p[u][2],CBS1p[u][3]->MatchCBS1p[u][3],CBS1p[u][4]->MatchCBS1p[u][4],CBS1p[u][5]->MatchCBS1p[u][5],CBS1p[u][6]->MatchCBS1p[u][6],CBS1p[u][7]->MatchCBS1p[u][7],CBS1p[u][8]->MatchCBS1p[u][8],CBS1p[u][9]->MatchCBS1p[u][9],CBS1p[u][10]->MatchCBS1p[u][10],CBS1p[d][1]->MatchCBS1p[d][1],CBS1p[d][2]->MatchCBS1p[d][2],CBS1p[d][3]->MatchCBS1p[d][3],CBS1p[d][4]->MatchCBS1p[d][4],CBS1p[d][5]->MatchCBS1p[d][5],CBS1p[d][6]->MatchCBS1p[d][6],CBS1p[d][7]->MatchCBS1p[d][7],CBS1p[d][8]->MatchCBS1p[d][8],CBS1p[d][9]->MatchCBS1p[d][9],CBS1p[d][10]->MatchCBS1p[d][10],CBS1p[c][1]->MatchCBS1p[c][1],CBS1p[c][2]->MatchCBS1p[c][2],CBS1p[c][3]->MatchCBS1p[c][3],CBS1p[c][4]->MatchCBS1p[c][4],CBS1p[c][5]->MatchCBS1p[c][5],CBS1p[c][6]->MatchCBS1p[c][6],CBS1p[c][7]->MatchCBS1p[c][7],CBS1p[c][8]->MatchCBS1p[c][8],CBS1p[c][9]->MatchCBS1p[c][9],CBS1p[c][10]->MatchCBS1p[c][10],CBS1p[s][1]->MatchCBS1p[s][1],CBS1p[s][3]->MatchCBS1p[s][3],CBS1p[s][5]->MatchCBS1p[s][5],CBS1p[s][7]->MatchCBS1p[s][7],CBS1p[s][9]->MatchCBS1p[s][9],CBS1p[b][1]->MatchCBS1p[b][1],CBS1p[b][3]->MatchCBS1p[b][3],CBS1p[b][5]->MatchCBS1p[b][5],CBS1p[b][7]->MatchCBS1p[b][7],CBS1p[b][9]->MatchCBS1p[b][9],CBS1p[M][7]->MatchCBS1p[M][7],CBS1p[M][8]->MatchCBS1p[M][8],CBS1p[e][1]->MatchCBS1p[e][1],CBS1p[e][3]->MatchCBS1p[e][3],CBS1p[e][5]->MatchCBS1p[e][5],CBS1p[e][7]->MatchCBS1p[e][7],CBS1p[e][9]->MatchCBS1p[e][9],CBS1p[\[Mu]][1]->MatchCBS1p[\[Mu]][1],CBS1p[\[Mu]][3]->MatchCBS1p[\[Mu]][3],CBS1p[\[Mu]][5]->MatchCBS1p[\[Mu]][5],CBS1p[\[Mu]][7]->MatchCBS1p[\[Mu]][7],CBS1p[\[Mu]][9]->MatchCBS1p[\[Mu]][9],CBS1p[\[Tau]][1]->MatchCBS1p[\[Tau]][1],CBS1p[\[Tau]][3]->MatchCBS1p[\[Tau]][3],CBS1p[\[Tau]][5]->MatchCBS1p[\[Tau]][5],CBS1p[\[Tau]][7]->MatchCBS1p[\[Tau]][7],CBS1p[\[Tau]][9]->MatchCBS1p[\[Tau]][9]};


MatchAnalytical[x_]:=x/.EWmatch;
Match[x_]:=x/.EWmatch/.ToMassBasis;


ExportEWmatcher:=Block[{},

If[exportEWmatcher==1,
MyPrint["Exporting EWmatcher results"];
dataOutput=Chop[Join[BS2,BC1,BS1Hunprimed,BS1GB[[1;;2]],BS1SLunprimed,BS1Hprimed,BS1GB[[3;;4]],BS1SLprimed],$MachineEpsilon];
outname="Output_EWmatcher.dat";
WriteEWmatcherOutputFile[outname,dataOutput];
];

];
