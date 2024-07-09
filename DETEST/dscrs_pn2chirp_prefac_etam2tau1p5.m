function prefac = pn2chirp_prefac_etam2tau1p5(fMin, geomFac)
%Prefactors in the conversion of eta, M to tau1.5
%P = PN2CHIRP_PREFAC_ETAM2TAU1P5(Fmin,G)
%Generates the prefactors in the conversion from symmetric mass ratio
%(eta), and total mass (M) to chirp time tau1.5 for a restricted 2PN
%waveform. G is the constant G*pi*Fmin/c^3 generated by PN2CHIRP_GEOMFAC. P
%has 2 elements that contain values of the prefactors in the order (left to
%right) they appear in the expressions given in OverLeaf: "BINARIES User
%Manual / MathNotes_LAL.tex".

%Soumya D. Mohanty, Apr 2023

fMinInv = 1/fMin;

%Use meaningful names for the prefactors
cht1p5pre = (1/8)*fMinInv;
cht1p5f0 = geomFac^(-2/3);

%Assign prefactors to output array
prefac(1) = cht1p5pre;
prefac(2) = cht1p5f0;