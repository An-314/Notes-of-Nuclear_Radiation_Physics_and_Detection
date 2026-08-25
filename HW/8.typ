#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(8)

#exercise(subname: [1])[
  定性比较塑料闪烁体和 NaI(Tl) 谱仪测得的 $662 "keV"$ $gamma$ 能谱。
]
#solution[
  NaI(Tl) 的有效原子序数和密度较大，光电截面高，因而有明显的全能峰、较高峰总比和较低的康普顿连续谱；光产额高，峰较窄。塑料以低 $Z$ 元素构成，康普顿散射占优，全能吸收概率低，谱以连续康普顿分布为主，且能量分辨较差。
]

#exercise(subname: [2])[
  解释 NaI(Tl) 能量分辨优于 BGO，而 BGO 探测效率更高的原因。
]
#solution[
  NaI(Tl) 光产额高，单位沉积能量产生更多光电子，$1/sqrt(N_(p e))$ 统计涨落较小，所以分辨更好。BGO 密度更大且含高 $Z$ 的 Bi，单位体积的光电和电子对作用概率更高，所以同尺寸下效率更高。
]

#exercise(subname: [3])[
  蒽晶体闪烁效率为 $6.2%$，平均波长 $447 "nm"$，求光子产额。
]
#solution[
  每 MeV 转为光能 $0.062 "MeV"$，单光子能量 $h c/lambda=2.77 "eV"$，故
  $
    Y=0.062 times 10^6/2.77 approx 2.24 times 10^4
  $
  个光子每 MeV。
]

#exercise(subname: [4])[
  CsI(Na) 衰减时间常数为 $630 "ns"$，求发射总光产额的 $85%$ 所需时间。
]
#solution[
  已发射比例为 $1-e^(-t/tau)=0.85$，故 $t=-tau ln 0.15=1.195 "µs"$。
]

#exercise(subname: [5])[
  NaI(Tl) 衰减时间 $230 "ns"$，输出回路时间常数 $10 "µs"$，阈值为脉冲幅度一半。判断脉冲工作状态、分辨时间及死时间类型。
]
#solution[
  因 $R C >> tau_s$，回路积分闪烁电流，工作于电压脉冲状态。脉冲下降近似 $V=V_0 e^(-t/(R C))$，到半高所需 $t=R C ln 2=6.93 "µs"$；计入有限上升时间后约 $6.77 "µs"$。阈值以上期间后续事件会重新抬高脉冲并延长忙期，属于延长型。
]

#exercise(subname: [6])[
  分辨时间 $20 "µs"$ 的 NaI(Tl) 测 Cs-137，观测全能峰 $5000 "s"^(-1)$，源峰效率 $1%$。求源活度。
]
#solution[
  非延长型校正给出 $n=m/(1-m tau)=6250 "s"^(-1)$，故 $A=n/epsilon=6.25 times 10^5 "Bq"$。
]

#exercise(subname: [7])[
  同一谱仪测活度 $5 times 10^5 "Bq"$ 的 Cs-137，源峰效率 $1%$，求观测全能峰率。
]
#solution[
  无死时间时真实峰率 $n=A epsilon=5000 "s"^(-1)$。非延长型观测率 $m=n/(1+n tau)=4.17 times 10^3 "s"^(-1)$。
]

#exercise(subname: [8])[
  求 $2.23 "MeV"$ $gamma$ 谱的全能峰、康普顿边、单逃逸峰和双逃逸峰位置，并说明晶体变大时峰总比变化。
]
#solution[
  全能峰为 $2.23 "MeV"$；康普顿边
  $
    E_C=E[1-1/(1+2E/(m_e c^2))] approx 2.00 "MeV".
  $
  单、双逃逸峰为 $E-0.511=1.72 "MeV"$ 与 $E-1.022=1.21 "MeV"$。晶体变大后散射光子更易再次相互作用并被完全吸收，峰总比增大。
]

#pagebreak()
#exercise(subname: [9])[
  $6 "MeV"$ 光子连续发生 $30 degree$、$60 degree$ 两次康普顿散射后逃逸，求总沉积能量；交换角度次序是否改变？
]
#solution[
  连续使用康普顿波长位移可直接相加：
  $
    1/E_2=1/E_0+[(1-cos 30 degree)+(1-cos 60 degree)]/(m_e c^2).
  $
  得 $E_2 approx 0.71 "MeV"$，沉积 $Delta E=6-E_2 approx 5.29 "MeV"$。表达式仅含两个角度项的和，故交换次序不改变总沉积。
]

#exercise(subname: [10])[
  已知 NaI(Tl) 光产额、收集效率、光阴极效率及光倍增管各级倍增因子，求测量 Cs-137 $662 "keV"$ 光子的最佳能量分辨率。
]
#solution[
  第一打拿极平均光电子数
  $
    N_1=E Y_(p h)F_(p h)g_c epsilon_K.
  $
  光阴极统计与倍增链涨落相加，
  $
    R=2.355 sqrt(1/N_1[1+1/delta_1 dot delta/(delta-1)]).
  $
  代入 $Y_(p h)=4.3 times 10^4/"MeV"$、$F_(p h)=0.6$、$g_c=0.95$、$epsilon_K=0.2$、$delta_1=20$、$delta=5$，得 $R approx 4.26%$。
]
