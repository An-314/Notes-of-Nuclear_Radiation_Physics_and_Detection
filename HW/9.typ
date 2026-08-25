#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(9)

#exercise(subname: [第 11 章 1])[
  某半导体探测器测量 $662 "keV"$ 光子，平均成对能 $w=2.98 "eV"$、Fano 因子 $F=0.1$。求统计极限，并结合题给电子学展宽与实测展宽分析总能量分辨。
]
#solution[
  统计极限为
  $
    Delta E_s=2.355 sqrt(F w E)=1.046 "keV".
  $
  独立展宽按平方相加：$Delta E=sqrt(Delta E_s^2+Delta E_e^2)$。代入题给电子学项得到总宽约 $1.85 "keV"$；若实测为 $2.5 "keV"$，附加展宽为 $sqrt(2.5^2-1.85^2) approx 1.68 "keV"$，来自电荷收集不完全、增益漂移等因素。
]

#exercise(subname: [第 11 章 2])[
  HPGe 结电容 $10 "pF"$，电荷灵敏前放反馈电容 $1 "pF"$，求沉积 $500 "keV"$ 时的输出脉冲幅度。
]
#solution[
  锗中平均成对能 $w approx 2.98 "eV"$，电荷量 $Q=E e/w$。电荷灵敏前放在开环增益很大时 $V_o=Q/C_f$，故
  $
    V_o=500 times 10^3/2.98 dot 1.602 times 10^(-19)/(1 times 10^(-12))
      approx 0.0269 "V".
  $
]

#exercise(subname: [第 11 章 3])[
  Am-241 $alpha$ 垂直入射时峰在 451 道，偏离法线 $60 degree$ 后移到 438 道。已知 $E_alpha=5.486 "MeV"$，求死层能损。
]
#solution[
  设垂直穿过死层的损失为 $Delta$，斜入射路程为其两倍。道址与进入灵敏区的能量成正比，故
  $
    (E_alpha-2Delta)/(E_alpha-Delta)=438/451.
  $
  解得 $Delta approx 0.154 "MeV"$。
]

#exercise(subname: [第 11 章 4])[
  金硅 N 型面垒探测器半径 $12 "mm"$、厚 $0.1 "mm"$、电阻率 $1000 "Ω cm"$，求室温偏压 $10$、$20$、$100 "V"$ 时的结电容。
]
#solution[
  由 $rho=1/(q mu_n N_D)$ 求施主浓度，再用
  $
    d=sqrt(2 epsilon(V+V_(b i))/(q N_D)), quad C=epsilon A/d.
  $
  若计算的耗尽宽度超过晶片厚度则取 $d=0.1 "mm"$。代入硅的 $epsilon=11.8epsilon_0$ 和室温电子迁移率，得约 $905$、$640$、$286 "pF"$。
]

#exercise(subname: [第 11 章 5])[
  同轴 HPGe 全耗尽结电容 $15 "pF"$，前放零电容噪声 $0.5 "keV"$、噪声斜率 $0.2 "keV/pF"$。求电子学噪声展宽和 ENC。
]
#solution[
  噪声展宽 $Delta E_e=0.5+0.2 times 15=3.5 "keV"$。若该值为 FWHM，则
  $
    E N C=Delta E_e/(2.355w)
      =3500/(2.355 times 2.98) approx 499
  $
  个电子。
]

#exercise(subname: [第 12 章 1])[
  根据 Na-24 衰变纲图分析 Ge 探测器能谱：标出各结构并说明成因；给出三晶谱仪框图及其测得的谱形。

  #align(center, image("fig/9-na24-decay.jpg", width: 46%))
]
#solution[
  Na-24 级联发射 $1368$ 与 $2754 "keV"$ 光子。单晶谱中有两全能峰；各自的康普顿边、单逃逸峰和双逃逸峰分别位于 $E_C$、$E_gamma-511 "keV"$、$E_gamma-1022 "keV"$。还可见 $511 "keV"$ 湮没峰、约 $200 "keV"$ 的背散射峰，以及两光子在分辨时间内共同吸收形成的 $4122 "keV"$ 求和峰。

  三晶谱仪由中央主探测器、两侧（或环形）反康普顿探测器、快符合/反符合电路、线性放大器和多道分析器组成。用反符合剔除逃逸散射光子后，康普顿连续谱显著降低，全能峰峰总比提高；若采用符合选择级联事件，则保留两级联 $gamma$ 的相关峰和求和结构。

  #align(center, image("fig/9-three-crystal.svg", width: 92%))

  作业中标注过的实测谱截图如下；保留它可以准确呈现连续谱、逃逸峰和求和峰的相对位置。

  #align(center, image("fig/9-na24-spectrum.jpg", width: 92%))
]

#pagebreak()
#exercise(subname: [第 12 章 2])[
  符合分辨时间 $2 "µs"$，两独立计数率为 $150$ 与 $200 "s"^(-1)$，求一小时偶然符合数。
]
#solution[
  两路对称符合窗下 $n_r=2 tau n_1 n_2=0.12 "s"^(-1)$，故一小时 $N_r=0.12 times 3600=432$ 次。
]

#exercise(subname: [第 13 章 1])[
  BF3 正比计数管尺寸 $diameter 4 "cm" times 18 "cm"$，气压 $101325 "Pa"$、温度 $0 degree C$，B-10 丰度 $96%$。求热中子灵敏度及 $0.1 "eV"$ 单能中子灵敏度。
]
#solution[
  体积 $V=pi r^2 L=226.2 "cm"^3$。理想气体给出 BF3 分子数密度 $n=P/(k T)$，故 B-10 数密度 $N_10=0.96 n$。宏观吸收截面 $Sigma=N_10 sigma$；对近似沿直径穿过的中子，内禀效率
  $
    eta=1-e^(-Sigma ell).
  $
  取热中子 B-10 截面 $sigma_0 approx 3837 "b"$，$N_10 approx 2.58 times 10^19 "cm"^(-3)$，故 $Sigma_0 approx 0.0990 "cm"^(-1)$。对垂直管轴入射、路径近似为直径 $4 "cm"$，
  $
    eta_0=1-e^(-Sigma_0 dot 4) approx 0.327.
  $
  低能截面服从 $1/v$ 律，
  $
    sigma(0.1 "eV")=sigma_0 sqrt(0.0253/0.1),
  $
  得 $sigma(0.1 "eV") approx 1930 "b"$、$Sigma approx 0.0498 "cm"^(-1)$，于是 $eta approx 1-e^(-0.0498 dot 4)=0.181$。
]
