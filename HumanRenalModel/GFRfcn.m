%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% GFRfcn
% Description: Autogenerated function from MATLAB for solving for GFR.

function G = GFRfcn(MAP,NA,P_A,P_G,in5)
%GFRFCN
%    G = GFRFCN(MAP,NA,P_A,P_G,IN5)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    27-Oct-2020 23:14:14

Rh2 = in5(2,:);
Rh3 = in5(3,:);
Rh4 = in5(4,:);
Rh5 = in5(5,:);
Rh6 = in5(6,:);
Rh7 = in5(7,:);
ScalFac = in5(36,:);
onc = in5(13,:);
rhD = in5(19,:);
rhK = in5(18,:);
rhN1 = in5(15,:);
rhN2 = in5(16,:);
rhN3 = in5(17,:);
rhP = in5(14,:);
t2 = P_G.*Rh3;
t3 = Rh2+Rh3;
t4 = Rh3.*onc;
t5 = Rh2.^2;
t6 = Rh3.^2;
t7 = rhP.^2;
t8 = 1.0./Rh3;
t9 = 1.0./Rh4;
t11 = 1.0./Rh5;
t12 = 1.0./Rh6;
t13 = 1.0./Rh7;
t10 = t9.^2;
t14 = -t4;
t15 = 1.0./t3;
t16 = Rh2.*t15;
t17 = t2+t14;
t18 = t16-1.0;
t22 = t8.*t15.*t17;
t19 = t8.*t18;
t23 = rhP.*t22;
t20 = rhP.*t19;
t21 = -t19;
t24 = -t23;
t25 = t9+t20+t21;
t27 = t22+t24;
t26 = Rh4.*t25;
t29 = Rh4.*t27;
t30 = rhN1.*t27;
t28 = t26-1.0;
t31 = t11.*t26;
t33 = rhN2+t30;
t34 = t11.*t29;
t32 = t28.^2;
t35 = t9.*t28;
t40 = rhN3.*t27.*t33;
t36 = rhN1.*rhN3.*t10.*t32;
t41 = rhN3.*t30.*t35;
t42 = -t40;
t44 = rhN3.*t33.*t35;
t37 = Rh5.*t36;
t43 = -t41;
t45 = -t44;
t53 = t27+t34+t42;
t38 = -t37;
t39 = t12.*t37;
t54 = Rh5.*t53;
t60 = t31+t35+t43+t45;
t46 = t36+t39;
t55 = -t54;
t56 = t12.*t54;
t61 = Rh5.*t60;
t47 = Rh6.*t46;
t57 = t12.*t55;
t58 = t29+t55;
t62 = -t61;
t63 = t12.*t61;
t48 = t13.*t47;
t49 = t38+t47;
t50 = -t12.*(t37-t47);
t52 = rhD.*t12.*(t37-t47);
t59 = t11.*t58;
t64 = t12.*t62;
t65 = t26+t62;
t51 = rhD.*t50;
t66 = t11.*t65;
t67 = rhK+t57+t59;
t70 = t48+t50+t52;
t68 = Rh6.*t67;
t75 = t64+t66;
t76 = -Rh6.*(t63-t66);
t69 = t13.*t68;
t71 = t54+t68;
t77 = t13.*t76;
t78 = t61+t76;
t72 = t12.*t71;
t79 = t12.*t78;
t73 = rhD.*t72;
t80 = rhD.*t79;
t74 = -t73;
t81 = -t80;
t86 = (-t79+t80+Rh6.*t13.*(t63-t66)).^2;
t82 = t69+t72+t74;
t85 = t77+t79+t81;
t83 = t70.*t82.*4.0;
t84 = -t83;
t87 = t84+t86;
t88 = sqrt(t87);
G = (ScalFac.*(P_G-onc+t15.*(-t2+t4+(Rh2.*(t5+t6+Rh2.*Rh3.*2.0+Rh2.*Rh4+Rh2.*Rh5+Rh3.*Rh4+Rh2.*Rh6+Rh3.*Rh5+Rh2.*Rh7+Rh3.*Rh6+Rh3.*Rh7-Rh2.*Rh7.*rhD-Rh3.*Rh7.*rhD-Rh2.*Rh4.*rhP-Rh2.*Rh5.*rhP-Rh3.*Rh4.*rhP-Rh2.*Rh6.*rhP-Rh3.*Rh5.*rhP-Rh2.*Rh7.*rhP-Rh3.*Rh6.*rhP-Rh3.*Rh7.*rhP-Rh7.*t5.*t88-Rh7.*t6.*t88+Rh5.*onc.*rhN1.*rhN3.*2.0+Rh6.*onc.*rhN1.*rhN3.*2.0+Rh7.*onc.*rhN1.*rhN3.*2.0-Rh2.*Rh3.*Rh7.*t88.*2.0-P_G.*Rh5.*rhN1.*rhN3.*2.0-P_G.*Rh6.*rhN1.*rhN3.*2.0-P_G.*Rh7.*rhN1.*rhN3.*2.0+Rh2.*Rh7.*rhD.*rhP+Rh3.*Rh7.*rhD.*rhP-Rh2.*Rh5.*rhN2.*rhN3-Rh2.*Rh6.*rhN2.*rhN3-Rh3.*Rh5.*rhN2.*rhN3-Rh2.*Rh7.*rhN2.*rhN3-Rh3.*Rh6.*rhN2.*rhN3-Rh3.*Rh7.*rhN2.*rhN3+P_G.*Rh7.*rhD.*rhN1.*rhN3.*2.0+P_G.*Rh5.*rhN1.*rhN3.*rhP.*4.0+P_G.*Rh6.*rhN1.*rhN3.*rhP.*4.0+P_G.*Rh7.*rhN1.*rhN3.*rhP.*4.0-P_G.*Rh5.*rhN1.*rhN3.*t7.*2.0-P_G.*Rh6.*rhN1.*rhN3.*t7.*2.0-P_G.*Rh7.*rhN1.*rhN3.*t7.*2.0+Rh2.*Rh7.*rhD.*rhN2.*rhN3+Rh3.*Rh7.*rhD.*rhN2.*rhN3+Rh2.*Rh5.*rhN2.*rhN3.*rhP+Rh2.*Rh6.*rhN2.*rhN3.*rhP+Rh3.*Rh5.*rhN2.*rhN3.*rhP+Rh2.*Rh7.*rhN2.*rhN3.*rhP+Rh3.*Rh6.*rhN2.*rhN3.*rhP+Rh3.*Rh7.*rhN2.*rhN3.*rhP-Rh7.*onc.*rhD.*rhN1.*rhN3.*2.0-Rh5.*onc.*rhN1.*rhN3.*rhP.*4.0-Rh6.*onc.*rhN1.*rhN3.*rhP.*4.0-Rh7.*onc.*rhN1.*rhN3.*rhP.*4.0+Rh5.*onc.*rhN1.*rhN3.*t7.*2.0+Rh6.*onc.*rhN1.*rhN3.*t7.*2.0+Rh7.*onc.*rhN1.*rhN3.*t7.*2.0-P_G.*Rh7.*rhD.*rhN1.*rhN3.*rhP.*4.0+P_G.*Rh7.*rhD.*rhN1.*rhN3.*t7.*2.0-Rh2.*Rh7.*rhD.*rhN2.*rhN3.*rhP-Rh3.*Rh7.*rhD.*rhN2.*rhN3.*rhP+Rh7.*onc.*rhD.*rhN1.*rhN3.*rhP.*4.0-Rh7.*onc.*rhD.*rhN1.*rhN3.*t7.*2.0))./(Rh5.*rhN1.*rhN3.*2.0+Rh6.*rhN1.*rhN3.*2.0+Rh7.*rhN1.*rhN3.*2.0-Rh7.*rhD.*rhN1.*rhN3.*2.0-Rh5.*rhN1.*rhN3.*rhP.*4.0-Rh6.*rhN1.*rhN3.*rhP.*4.0-Rh7.*rhN1.*rhN3.*rhP.*4.0+Rh5.*rhN1.*rhN3.*t7.*2.0+Rh6.*rhN1.*rhN3.*t7.*2.0+Rh7.*rhN1.*rhN3.*t7.*2.0+Rh7.*rhD.*rhN1.*rhN3.*rhP.*4.0-Rh7.*rhD.*rhN1.*rhN3.*t7.*2.0))).*6.0e+1)./Rh2;
