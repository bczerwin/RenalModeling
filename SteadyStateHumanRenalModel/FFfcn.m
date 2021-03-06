%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% FFfcn
% Description: Autogenerated function from MATLAB for solving system
% of equations faster in terms of just P_A and P_G.

function F = FFfcn(MAP,NA,P_A,P_G,in5)
%FFFCN
%    F = FFFCN(MAP,NA,P_A,P_G,IN5)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    28-Oct-2020 01:48:08

Rh2 = in5(2,:);
Rh4 = in5(4,:);
Rh5 = in5(5,:);
Rh6 = in5(6,:);
Rh7 = in5(7,:);
Rh8 = in5(8,:);
Rh9 = in5(9,:);
alpha1 = in5(11,:);
fb1 = in5(33,:);
fb2 = in5(34,:);
rhD = in5(19,:);
rhN1 = in5(15,:);
rhN2 = in5(16,:);
rhN3 = in5(17,:);
rhP = in5(14,:);
rsD5 = in5(27,:);
rsK = in5(22,:);
rsP = in5(20,:);
t2 = Rh2.*Rh4;
t3 = Rh2.*Rh5;
t4 = Rh2.*Rh6;
t5 = Rh2.*Rh7;
t6 = Rh2.^2;
t7 = rhP.^2;
t13 = Rh5.*rhN1.*rhN3;
t14 = Rh6.*rhN1.*rhN3;
t15 = Rh7.*rhN1.*rhN3;
t16 = -P_G;
t17 = 1.0./Rh2;
t18 = 1.0./Rh4;
t20 = 1.0./Rh5;
t21 = 1.0./Rh6;
t22 = 1.0./Rh7;
t23 = rsK-1.0;
t24 = rsP-1.0;
t46 = P_A-6.7e+1;
t98 = alpha1.*2.578512396694214e+6;
t99 = P_G.*5.00000068252096e+6;
t100 = Rh4.*5.00000068252096e+6;
t101 = Rh5.*5.00000068252096e+6;
t102 = Rh6.*5.00000068252096e+6;
t103 = Rh7.*5.00000068252096e+6;
t104 = Rh2+5.00000068252096e+6;
t105 = Rh2.*1.000000136504192e+7;
t116 = Rh7.*rhD.*(-5.00000068252096e+6);
t117 = Rh4.*rhP.*(-5.00000068252096e+6);
t118 = Rh5.*rhP.*(-5.00000068252096e+6);
t119 = Rh6.*rhP.*(-5.00000068252096e+6);
t120 = Rh7.*rhP.*(-5.00000068252096e+6);
t121 = Rh5.*rhN2.*rhN3.*(-5.00000068252096e+6);
t122 = Rh6.*rhN2.*rhN3.*(-5.00000068252096e+6);
t123 = Rh7.*rhN2.*rhN3.*(-5.00000068252096e+6);
t8 = rhD.*t5;
t9 = rhP.*t2;
t10 = rhP.*t3;
t11 = rhP.*t4;
t12 = rhP.*t5;
t19 = t18.^2;
t25 = rhD.*t15;
t27 = rhN2.*rhN3.*t3;
t28 = rhN2.*rhN3.*t4;
t29 = rhN2.*rhN3.*t5;
t30 = rhP.*t13.*2.0;
t31 = rhP.*t14.*2.0;
t32 = rhP.*t15.*2.0;
t37 = P_A+t16;
t43 = t13.*6.0e+1;
t44 = t14.*6.0e+1;
t45 = t15.*6.0e+1;
t47 = P_G.*t13.*2.0;
t48 = P_G.*t14.*2.0;
t49 = P_G.*t15.*2.0;
t55 = exp(t46);
t57 = P_G.*rhP.*t13.*4.0;
t58 = P_G.*rhP.*t14.*4.0;
t59 = P_G.*rhP.*t15.*4.0;
t60 = t7.*t13;
t61 = t7.*t14;
t62 = t7.*t15;
t72 = rhP.*t13.*1.2e+2;
t73 = rhP.*t14.*1.2e+2;
t74 = rhP.*t15.*1.2e+2;
t106 = -t99;
t107 = rhD.*t103;
t108 = rhP.*t100;
t109 = rhP.*t101;
t110 = rhP.*t102;
t111 = rhP.*t103;
t113 = rhN2.*rhN3.*t101;
t114 = rhN2.*rhN3.*t102;
t115 = rhN2.*rhN3.*t103;
t128 = 1.0./t104;
t131 = rhN2.*rhN3.*rhP.*t116;
t133 = t99-1.500000204756288e+8;
t26 = rhP.*t8;
t33 = rhN2.*rhN3.*t8;
t34 = rhN2.*rhN3.*t10;
t35 = rhN2.*rhN3.*t11;
t36 = rhN2.*rhN3.*t12;
t38 = -t8;
t39 = -t9;
t40 = -t10;
t41 = -t11;
t42 = -t12;
t50 = -t25;
t51 = t25.*6.0e+1;
t52 = -t30;
t53 = -t31;
t54 = -t32;
t56 = P_G.*t25.*2.0;
t63 = rhP.*t25.*2.0;
t65 = -t47;
t66 = -t48;
t67 = -t49;
t68 = -t27;
t69 = -t28;
t70 = -t29;
t75 = P_G.*rhP.*t25.*4.0;
t76 = t7.*t25;
t77 = -t72;
t78 = -t73;
t79 = -t74;
t80 = t7.*t43;
t81 = t7.*t44;
t82 = t7.*t45;
t83 = t55+1.0;
t84 = rhP.*t25.*1.2e+2;
t85 = t7.*t47;
t86 = t7.*t48;
t87 = t7.*t49;
t91 = P_G.*t60.*-2.0;
t92 = P_G.*t61.*-2.0;
t93 = P_G.*t62.*-2.0;
t112 = rhP.*t107;
t124 = rhN2.*rhN3.*t107;
t125 = rhN2.*rhN3.*t109;
t126 = rhN2.*rhN3.*t110;
t127 = rhN2.*rhN3.*t111;
t130 = Rh2.*t128;
t139 = t128.*t133.*1.999999726991653e-7;
t141 = rhP.*t128.*t133.*(-1.999999726991653e-7);
t64 = rhN2.*rhN3.*t26;
t71 = -t51;
t88 = -t75;
t90 = t7.*t56;
t94 = t7.*t50;
t95 = t7.*t51;
t96 = log(t83);
t97 = t76.*-6.0e+1;
t129 = rhN2.*rhN3.*t112;
t132 = t130-1.0;
t134 = t130.*1.999999726991653e-7;
t140 = rhP.*t139;
t152 = t139+t141;
t89 = -t64;
t135 = -t134;
t136 = rhP.*t132.*1.999999726991653e-7;
t137 = t13+t14+t15+t50+t52+t53+t54+t60+t61+t62+t63+t94;
t153 = Rh4.*t152;
t154 = rhN1.*t152;
t138 = 1.0./t137;
t142 = t18+t135+t136+1.999999726991653e-7;
t155 = rhN2+t154;
t156 = -t153;
t157 = t20.*t153;
t143 = Rh4.*t142;
t165 = rhN3.*t152.*t155;
t144 = t143-1.0;
t145 = t20.*t143;
t166 = -t165;
t146 = t144.^2;
t147 = t18.*t144;
t171 = t152+t157+t166;
t148 = rhN1.*rhN3.*t19.*t146;
t149 = t13.*t19.*t146;
t161 = rhN3.*t147.*t154;
t163 = rhN3.*t147.*t155;
t172 = Rh5.*t171;
t150 = -t149;
t151 = t21.*t149;
t162 = -t161;
t164 = -t163;
t173 = t21.*t172;
t179 = t156+t172;
t180 = -t20.*(t153-t172);
t158 = t148+t151;
t174 = t145+t147+t162+t164;
t184 = t173+t180;
t159 = Rh6.*t158;
t175 = Rh5.*t174;
t185 = Rh6.*t184;
t160 = t22.*t159;
t167 = t150+t159;
t168 = -t21.*(t149-t159);
t170 = rhD.*t21.*(t149-t159);
t176 = -t175;
t177 = t21.*t175;
t186 = -t185;
t187 = t22.*t185;
t169 = rhD.*t168;
t178 = t21.*t176;
t181 = t143+t176;
t183 = t160+t168+t170;
t191 = t172+t186;
t182 = t20.*t181;
t192 = t21.*t191;
t188 = t178+t182;
t189 = -Rh6.*(t177-t182);
t193 = rhD.*t192;
t194 = -t192;
t190 = t22.*t189;
t195 = t175+t189;
t199 = t187+t193+t194;
t196 = t21.*t195;
t202 = t183.*t199.*4.0;
t197 = rhD.*t196;
t198 = -t197;
t201 = (-t196+t197+Rh6.*t22.*(t177-t182)).^2;
t200 = t190+t196+t198;
t203 = t201+t202;
t204 = sqrt(t203);
t205 = Rh2.*t5.*t204;
t207 = t5.*t204.*1.000000136504192e+7;
t209 = Rh7.*t204.*2.500000682521007e+13;
t206 = -t205;
t208 = -t207;
t210 = -t209;
t211 = t2+t3+t4+t5+t6+t26+t33+t34+t35+t36+t38+t39+t40+t41+t42+t43+t44+t45+t56+t57+t58+t59+t65+t66+t67+t68+t69+t70+t71+t77+t78+t79+t80+t81+t82+t84+t88+t89+t90+t91+t92+t93+t97+t100+t101+t102+t103+t105+t112+t116+t117+t118+t119+t120+t121+t122+t123+t124+t125+t126+t127+t131+t206+t208+t210+2.500000682521007e+13;
t212 = (t138.*t211)./2.0;
t215 = t138.*t211.*9.999998634958265e-8;
t213 = Rh2.*t212;
t214 = t18.*t212;
t216 = t106+t213+1.500000204756288e+8;
t217 = t128.*t216;
t218 = -t217;
t219 = P_G+t217-3.0e+1;
t220 = t217.*1.999999726991653e-7;
t221 = -t220;
t222 = NA.*t17.*t23.*t24.*t219.*8.4e+8;
t229 = t212+t218;
t223 = t222-7.7e+1./1.0e+1;
t230 = rhP.*t229.*1.999999726991653e-7;
t224 = exp(t223);
t231 = -t230;
t225 = t224+1.0;
t232 = t214+t215+t221+t231;
t226 = 1.0./t225;
t233 = Rh4.*t232;
t227 = rsD5.*t226.*2.268e-1;
t234 = -t233;
t235 = t20.*t233;
t228 = t227-2.684e-1;
t236 = t212+t234;
t237 = t18.*t236;
t238 = rhN1.*t237;
t239 = -t237;
t240 = -t238;
t241 = rhN2+t240;
t242 = rhN3.*t237.*t241;
t243 = t235+t239+t242;
t244 = Rh5.*t243;
t245 = -t244;
t246 = t21.*t244;
t247 = t21.*t245;
t248 = t233+t245;
t249 = t20.*t248;
t250 = t247+t249;
t251 = -1.0./(t246-t249);
t252 = (NA.*Rh7.*t23.*t24.*t219.*t228.*-4.0e+1)./(t4.*(t246-t249));
t253 = t252+2.4e+1./5.0;
t254 = exp(t253);
t255 = t254+1.0;
t256 = 1.0./t255;
t257 = fb2.*t256.*9.03e+6;
t258 = Rh8+t98+t257;
t259 = (fb1.*t96.*t258)./1.34e+2;
t260 = t98+t257+t259;
t261 = 1.0./t260;
t262 = t37.*t261;
F = [MAP.*3.878205128205129e-7-P_A.*3.878205128205129e-7-t262;t262-t17.*t219-(P_G-(Rh8.*3.0+P_G.*Rh9)./(Rh8+Rh9))./Rh8];
