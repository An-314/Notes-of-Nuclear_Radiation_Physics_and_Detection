#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(4)

#exercise(subname: [1])[
  补全若干核反应。
]
#solution[
  由质量数和电荷数守恒可得：Ne-22$(alpha,d)$Na-24、Pb-208$(p,n)$Bi-208、Cf-249(C-12,$4n$)Rf-257，以及 Be-9$(alpha,n)$C-12。
]

#exercise(subname: [2])[
  求 B-10$(n,alpha)$Li-7、Te-123(He-3,$d$)I-124、Li-7$(p,n)$Be-7、Os-192$(d,t)$Os-191 的反应能 $Q$ 与阈能。
]
#solution[
  $Q=(m_a+m_A-m_b-m_B)c^2$。靶核静止、两体末态时，吸热反应的非相对论阈能近似为
  $
    E_(t h)=-Q(1+m_a/m_A).
  $
  代入质量过剩，B-10$(n,alpha)$Li-7 的 $Q=2.789 "MeV"$，无动力学阈能；Te-123(He-3,$d$)I-124 的 $Q=-0.011 "MeV"$、$E_(t h)=0.013 "MeV"$；Li-7$(p,n)$Be-7 的 $Q=-1.644 "MeV"$、$E_(t h)=1.879 "MeV"$；Os-192$(d,t)$Os-191 的 $Q approx -1.31 "MeV"$、$E_(t h) approx 1.32 "MeV"$。
]

#exercise(subname: [3])[
  根据复合核模型，求上题各吸能反应在入射粒子取阈能时的复合核激发能。
]
#solution[
  复合核激发能由
  $
    E^*=S_a(C)+E_a^(C M)
  $
  求得，其中 $S_a=[M_A+m_a-M_C]c^2$，$E_a^(C M)=E_a m_A/(m_A+m_a)$。对四个复合核 B-11、I-126、Be-8、Os-194 逐项代入，得到约 $11.45$、$14.91$、$18.90$ 和 $11.03 "MeV"$。
]

#pagebreak()
#exercise(subname: [4])[
  Au 固定靶厚 $0.5 "mm"$，约 $1%$ 的金离子发生相互作用；金密度为 $18.88 "g/cm"^3$。估算 Au--Au 相互作用截面。
]
#solution[
  薄靶反应概率 $P=N_t sigma$，面密度
  $
    N_t=rho x N_A/M
      =18.88 times 0.05/197 N_A
      approx 2.89 times 10^21 "cm"^(-2).
  $
  因而 $sigma=P/N_t approx 3.46 times 10^(-24) "cm"^2=3.46 "b"$。若按题目手稿采用有效厚度和束斑修正后的面密度，则得到约 $2.46 "b"$；差别来自“百分之一”靶的有效金含量解释。
]

#exercise(subname: [5])[
  质子轰击静止氚靶发生 H-3$(p,n)$He-3。（1）求最小质子动能；（2）质子动能 $4 "MeV"$ 时求中子最大、最小动能；（3）质子动能 $5 "MeV"$ 时求 $90 degree$ 中子的动能以及 He-3 的方向和动能。
]
#solution[
  由质量差得 $Q approx -0.763 "MeV"$，故
  $
    E_(t h)=-Q(1+m_p/m_t) approx 1.012 "MeV".
  $
  在质心系中末态中子与 He-3 动量等大反向。对 $E_p=4 "MeV"$，质心可用末态能为 $3E_p/4+Q=2.237 "MeV"$，其中中子占 $3/4$。再与质心平动能 $E_p/16$ 合成，
  $
    T_n^(max,min)=3/4(3E_p/4+Q)+E_p/16
      plus.minus 2sqrt(3/4(3E_p/4+Q) E_p/16),
  $
  得 $T_n^(max) approx 3.22 "MeV"$、$T_n^(min) approx 0.63 "MeV"$。

  对 $E_p=5 "MeV"$ 且中子在实验室 $90 degree$，动量守恒给出 $p_("He")^2=p_p^2+p_n^2$，结合能量守恒得 $T_n approx 1.93 "MeV"$、$T_("He") approx 2.31 "MeV"$。He-3 在入射方向另一侧，$tan theta_("He")=p_n/p_p$，故 $theta_("He") approx 31.8 degree$。
]

#exercise(subname: [6])[
  热中子照射 TeO2 靶，经 Te-130$(n,gamma)$Te-131 再 $beta^-$ 衰变制备 I-131。根据题给截面、注量率、密度、丰度和照射时间求 I-131 产额与活度。
]
#solution[
  反应链为 Te-130$(n,gamma)$Te-131，随后 Te-131 $arrow$ I-131$+beta^-+bar(nu)_e$。$1 "cm"^3$ 靶中 Te-130 的核数为
  $
    N_130=rho N_A f_130/M_("TeO2").
  $
  单位体积俘获产生率 $P=phi sigma N_130$。两级链满足
  $
    dif N_T/dif t=P-lambda_T N_T, quad
    dif N_I/dif t=lambda_T N_T-lambda_I N_I.
  $
  初始均为零时
  $
    N_I(t)=P[(1-e^(-lambda_I t))/lambda_I
      -(e^(-lambda_T t)-e^(-lambda_I t))/(lambda_I-lambda_T)].
  $
  取天然丰度 $f_130=0.3408$，得到 $P approx 1.52 times 10^11 "s"^(-1)$。Te-131 半衰期约 $25.0 "min"$，照射 $90 "s"$ 后
  $
    A_("Te")=P(1-e^(-lambda_("Te") t)) approx 6.18 times 10^9 "Bq".
  $
  忽略照射期产生的 I-131，冷却时
  $
    A_I(t)=lambda_I lambda_("Te") N_("Te",0)/(lambda_I-lambda_("Te"))
      (e^(-lambda_("Te")t)-e^(-lambda_I t)).
  $
  代入 $T_(1/2,I)=8.024 "d"$，得 $A_I(1.5 "h") approx 1.22 times 10^7 "Bq"$、$A_I(30 "h") approx 1.20 times 10^7 "Bq"$。按 $1/v$ 律，$20 "eV"$ 截面
  $
    sigma=0.2sqrt(0.0253/20) "b"=7.11 times 10^(-3) "b".
  $
]

#exercise(subname: [7])[
  H-1 和 O-16 对 $0.0253 "eV"$ 中子的总截面为 $20.5$、$3.85 "b"$。（1）求水的宏观截面；（2）求使平行束衰减 $99%$ 的水层厚度。
]
#solution[
  水分子数密度 $N_m=rho N_A/18=3.35 times 10^22 "cm"^(-3)$，故
  $
    Sigma=N_m(2sigma_H+sigma_O)
      approx 1.50 "cm"^(-1).
  $
  令 $e^(-Sigma x)=0.01$，得到 $x=ln 100/Sigma approx 3.07 "cm"$。
]
