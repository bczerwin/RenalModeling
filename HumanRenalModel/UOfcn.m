%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% UO fcn
% Description: Autogenerated function from MATLAB for solving for UO.

function U = UOfcn(MAP,NA,P_A,P_G,in5)
%UOFCN
%    U = UOFCN(MAP,NA,P_A,P_G,IN5)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    27-Oct-2020 23:16:26

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
t3 = Rh2.*Rh4;
t4 = Rh2.*Rh5;
t5 = Rh3.*Rh4;
t6 = Rh2.*Rh6;
t7 = Rh3.*Rh5;
t8 = Rh2.*Rh7;
t9 = Rh3.*Rh6;
t10 = Rh3.*Rh7;
t11 = Rh2+Rh3;
t12 = Rh3.*onc;
t13 = Rh2.^2;
t14 = Rh3.^2;
t15 = rhP.^2;
t16 = Rh2.*Rh3.*2.0;
t27 = Rh5.*rhN1.*rhN3;
t28 = Rh6.*rhN1.*rhN3;
t29 = Rh7.*rhN1.*rhN3;
t30 = 1.0./Rh3;
t31 = 1.0./Rh4;
t33 = 1.0./Rh5;
t34 = 1.0./Rh6;
t35 = 1.0./Rh7;
t17 = rhD.*t8;
t18 = rhD.*t10;
t19 = rhP.*t3;
t20 = rhP.*t4;
t21 = rhP.*t5;
t22 = rhP.*t6;
t23 = rhP.*t7;
t24 = rhP.*t8;
t25 = rhP.*t9;
t26 = rhP.*t10;
t32 = t31.^2;
t36 = -t2;
t37 = rhD.*t29;
t38 = -t12;
t41 = rhN2.*rhN3.*t4;
t42 = rhN2.*rhN3.*t6;
t43 = rhN2.*rhN3.*t7;
t44 = rhN2.*rhN3.*t8;
t45 = rhN2.*rhN3.*t9;
t46 = rhN2.*rhN3.*t10;
t47 = onc.*t27.*2.0;
t48 = onc.*t28.*2.0;
t49 = onc.*t29.*2.0;
t50 = rhP.*t27.*2.0;
t51 = rhP.*t28.*2.0;
t52 = rhP.*t29.*2.0;
t61 = 1.0./t11;
t72 = P_G.*t27.*2.0;
t73 = P_G.*t28.*2.0;
t74 = P_G.*t29.*2.0;
t80 = P_G.*rhP.*t27.*4.0;
t81 = P_G.*rhP.*t28.*4.0;
t82 = P_G.*rhP.*t29.*4.0;
t83 = t15.*t27;
t84 = t15.*t28;
t85 = t15.*t29;
t87 = onc.*rhP.*t27.*4.0;
t88 = onc.*rhP.*t28.*4.0;
t89 = onc.*rhP.*t29.*4.0;
t39 = rhP.*t17;
t40 = rhP.*t18;
t53 = rhN2.*rhN3.*t17;
t54 = rhN2.*rhN3.*t18;
t55 = rhN2.*rhN3.*t20;
t56 = rhN2.*rhN3.*t22;
t57 = rhN2.*rhN3.*t23;
t58 = rhN2.*rhN3.*t24;
t59 = rhN2.*rhN3.*t25;
t60 = rhN2.*rhN3.*t26;
t62 = -t17;
t63 = -t18;
t64 = -t19;
t65 = -t20;
t66 = -t21;
t67 = -t22;
t68 = -t23;
t69 = -t24;
t70 = -t25;
t71 = -t26;
t75 = -t37;
t76 = -t50;
t77 = -t51;
t78 = -t52;
t79 = P_G.*t37.*2.0;
t86 = onc.*t37.*2.0;
t90 = rhP.*t37.*2.0;
t93 = -t72;
t94 = -t73;
t95 = -t74;
t96 = -t41;
t97 = -t42;
t98 = -t43;
t99 = -t44;
t100 = -t45;
t101 = -t46;
t102 = Rh2.*t61;
t104 = -t87;
t105 = -t88;
t106 = -t89;
t107 = P_G.*rhP.*t37.*4.0;
t108 = t15.*t37;
t109 = onc.*rhP.*t37.*4.0;
t110 = t2+t38;
t111 = t15.*t72;
t112 = t15.*t73;
t113 = t15.*t74;
t117 = t15.*t47;
t118 = t15.*t48;
t119 = t15.*t49;
t122 = P_G.*t83.*-2.0;
t123 = P_G.*t84.*-2.0;
t124 = P_G.*t85.*-2.0;
t91 = rhN2.*rhN3.*t39;
t92 = rhN2.*rhN3.*t40;
t103 = -t86;
t114 = -t107;
t120 = t15.*t79;
t121 = t15.*t86;
t125 = t15.*t75;
t126 = onc.*t108.*-2.0;
t127 = t102-1.0;
t131 = t30.*t61.*t110;
t115 = -t91;
t116 = -t92;
t128 = t30.*t127;
t132 = rhP.*t131;
t149 = t27+t28+t29+t75+t76+t77+t78+t83+t84+t85+t90+t125;
t129 = rhP.*t128;
t130 = -t128;
t133 = -t132;
t150 = 1.0./t149;
t134 = t31+t129+t130;
t136 = t131+t133;
t135 = Rh4.*t134;
t138 = Rh4.*t136;
t139 = rhN1.*t136;
t137 = t135-1.0;
t140 = t33.*t135;
t142 = rhN2+t139;
t143 = t33.*t138;
t141 = t137.^2;
t144 = t31.*t137;
t151 = rhN3.*t136.*t142;
t145 = rhN1.*rhN3.*t32.*t141;
t146 = t27.*t32.*t141;
t152 = rhN3.*t139.*t144;
t153 = -t151;
t155 = rhN3.*t142.*t144;
t147 = -t146;
t148 = t34.*t146;
t154 = -t152;
t156 = -t155;
t164 = t136+t143+t153;
t157 = t145+t148;
t165 = Rh5.*t164;
t171 = t140+t144+t154+t156;
t158 = Rh6.*t157;
t166 = -t165;
t167 = t34.*t165;
t172 = Rh5.*t171;
t159 = t35.*t158;
t160 = t147+t158;
t161 = -t34.*(t146-t158);
t163 = rhD.*t34.*(t146-t158);
t168 = t34.*t166;
t169 = t138+t166;
t173 = -t172;
t174 = t34.*t172;
t162 = rhD.*t161;
t170 = t33.*t169;
t175 = t34.*t173;
t176 = t135+t173;
t181 = t159+t161+t163;
t177 = t33.*t176;
t178 = rhK+t168+t170;
t179 = Rh6.*t178;
t186 = t175+t177;
t187 = -Rh6.*(t174-t177);
t180 = t35.*t179;
t182 = t165+t179;
t188 = t35.*t187;
t189 = t172+t187;
t183 = t34.*t182;
t190 = t34.*t189;
t184 = rhD.*t183;
t191 = rhD.*t190;
t185 = -t184;
t192 = -t191;
t197 = (-t190+t191+Rh6.*t35.*(t174-t177)).^2;
t193 = t180+t183+t185;
t196 = t188+t190+t192;
t194 = t181.*t193.*4.0;
t195 = -t194;
t198 = t195+t197;
t199 = sqrt(t198);
t200 = Rh3.*t8.*t199.*2.0;
t201 = Rh2.*t8.*t199;
t202 = Rh3.*t10.*t199;
t203 = -t200;
t204 = -t201;
t205 = -t202;
t206 = t3+t4+t5+t6+t7+t8+t9+t10+t13+t14+t16+t39+t40+t47+t48+t49+t53+t54+t55+t56+t57+t58+t59+t60+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t79+t80+t81+t82+t93+t94+t95+t96+t97+t98+t99+t100+t101+t103+t104+t105+t106+t109+t114+t115+t116+t117+t118+t119+t120+t122+t123+t124+t126+t203+t204+t205;
t207 = (t150.*t206)./2.0;
t208 = Rh2.*t207;
t209 = t31.*t207;
t210 = t12+t36+t208;
t211 = t61.*t210;
t212 = -t211;
t213 = t207+t212;
t214 = t30.*t213;
t215 = rhP.*t214;
t216 = -t215;
t217 = t209+t214+t216;
t218 = Rh4.*t217;
t219 = -t218;
t220 = t33.*t218;
t221 = t207+t219;
t222 = t31.*t221;
t223 = rhN1.*t222;
t224 = -t222;
t225 = -t223;
t226 = rhN2+t225;
t227 = rhN3.*t222.*t226;
t228 = t220+t224+t227;
U = Rh6.*ScalFac.*t35.*(rhK+t33.*(t218-Rh5.*t228)-Rh5.*t34.*t228).*6.0e+1;
