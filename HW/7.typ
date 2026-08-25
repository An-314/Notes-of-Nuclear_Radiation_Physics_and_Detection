#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(7)

#exercise(subname: [1])[
  平板电离室极板间距 $2 "cm"$，充 $3 "atm"$ 氩气，加高压 $2 "kV"$。$10^5$ 个电子—离子对产生在两极中央；电子漂移速度 $10^5 "cm/s"$，正离子迁移率 $1.37 "cm"^2/("V s atm")$。求电子、正离子的感应电流 $I^-(t),I^+(t)$ 与累积感应电荷 $Q^-(t),Q^+(t)$。
]
#solution[
  场强 $E=V/d=10^5 "V/m"$。题给迁移率按 $3 "atm"$ 修正后，正离子速度
  $
    u_+=mu_+E/3 approx 45.7 "m/s".
  $
  两类载流子均漂移半个极板间距，故 $t_-=0.01/(10^3)=10 "µs"$，$t_+=0.01/45.7=219 "µs"$。Shockley--Ramo 定理在平板中给出
  $
    I_-=N e u_-/d=8.01 times 10^(-10) "A", quad 0<t<t_-,
  $
  $
    I_+=N e u_+/d=3.66 times 10^(-12) "A", quad 0<t<t_+.
  $
  相应累积电荷为 $Q_-(t)=I_- min(t,t_-)$、$Q_+(t)=I_+ min(t,t_+)$；最终各为 $N e/2=8.01 times 10^(-15) "C"$，总感应电荷为 $N e$。
]

#exercise(subname: [2])[
  将 $10 "kBq"$ 的 Po-210 源放入充氩累计电离室，$5.3 "MeV"$ $alpha$ 径迹完全包含。求平均输出电流；若 $R=20 "GΩ"$、$C=12 "pF"$，求输出电压信号的相对方差。
]
#solution[
  每个 $alpha$ 产生的离子对数 $N=E/w$，取氩气 $w=26.3 "eV"$。平均电流
  $
    bar(I)=A E e/w
      approx 10^4 dot 5.3 times 10^6/26.3 dot e
      approx 3.23 times 10^(-10) "A".
  $
  对泊松到达、指数衰减的 RC 脉冲叠加，电压相对方差为 $1/(2 A R C)$，代入得到约 $2.08 times 10^(-4)$。
]

#pagebreak()
#exercise(subname: [3])[
  屏栅电离室总输入电容为 $20 "pF"$，放大器噪声均方根 $0.2 "mV"$，要求信噪比不小于 4。求可测最小 $alpha$ 能量和能量分辨；再求气体放大倍数 $1000$ 的正比计数器对同一粒子的脉冲幅度与分辨率。取氩气 $w=26.3 "eV"$、$F=0.2$。
]
#solution[
  电离室脉冲 $V=N e/C=E e/(w C)$。令 $V/(0.2 "mV")=4$，得 $E_(min) approx 2.63 "MeV"$。将电子学噪声和 Fano 涨落平方相加，
  $
    R=2.355 sqrt(F w/E+(sigma_E/E)^2),
  $
  得题给阈值处的分辨率约 $58.9%$。正比计数器有 $V=A_g E e/(w C) approx 0.80 "V"$；计入雪崩涨落后，分辨率约 $0.69%$。
]

#exercise(subname: [4])[
  平板电离室极板间距为 $d$，$alpha$ 径迹长度及倾角如图，沿径迹比能损 $S$ 为常数，电子漂移速度为 $u$。画电子漂移形成的电流脉冲并标出幅度和时间。

  #align(center, image("fig/7-ionization-geometry.jpg", width: 52%))
]
#solution[
  单位径迹产生的电荷为 $S e/w$，平板权重场为 $1/d$。时刻 $t$ 尚未到达阳极的电子对应于径迹上漂移距离大于 $u t$ 的部分，故
  $
    i(t)=u/d dot e S/w dot L_("remain")(t).
  $
  若径迹在漂移方向的投影跨越区间 $x_1$ 到 $x_2$，则 $i(t)$ 在 $0<t<x_1/u$ 为平台，随后在 $x_1/u<t<x_2/u$ 线性降至零；平台高度与总径迹长度成正比，脉冲终止于 $t=x_2/u$。

  #align(center, image("fig/7-pulse.svg", width: 78%))
]

#exercise(subname: [5])[
  圆柱正比计数器阴极、阳极半径为 $5 "cm"$、$25 "µm"$，工作电压 $2000 "V"$；最小雪崩场强为 $10^6 "V/m"$。求倍增区体积占比。
]
#solution[
  圆柱场强 $E(r)=V/[r ln(b/a)]$。令 $E(r_m)=10^6 "V/m"$ 得 $r_m approx 2.63 times 10^(-4) "m"$。故
  $
    f=(r_m^2-a^2)/(b^2-a^2) approx 2.7 times 10^(-5)=0.0027%.
  $
]

#exercise(subname: [6])[
  求氩气屏栅电离室与正比计数器测量 Am-241 的 $5.486 "MeV"$ $alpha$ 粒子时的最佳半高全宽。取 $F=0.2$。
]
#solution[
  电离室的统计极限
  $
    Delta E=2.355 sqrt(F w E) approx 12.7 "keV".
  $
  正比计数器还要计入雪崩涨落 $f_A$，
  $
    Delta E=2.355 sqrt((F+f_A) w E),
  $
  代入题给气体倍增涨落参数得到约 $25 "keV"$。
]

#exercise(subname: [7])[
  圆柱电子脉冲电离室和正比计数器的输出分别主要由哪种载流子贡献？说明原因。
]
#solution[
  圆柱脉冲电离室中的初级电离遍布灵敏体积，电子漂移快且跨越较大的权重势差，输出前沿主要由电子贡献。正比计数器的雪崩发生在阳极丝附近，雪崩电子很快被收集，跨越权重势差很小；大量正离子向外漂移跨越几乎全部权重势差，因此总脉冲主要由正离子贡献。
]

#exercise(subname: [8])[
  说明气体探测器中加入多原子分子气体的作用。
]
#solution[
  多原子分子提供丰富的振动、转动能级，可吸收惰性气体的紫外光和亚稳态能量，并通过非辐射解离耗散，抑制光子反馈和二次雪崩；还可改变电子漂移速度，使 Townsend 系数随场强变化更平缓，扩大正比区。G--M 管中它起淬灭作用，使放电自行终止。
]

#exercise(subname: [9])[
  分辨时间 $6 "µs"$ 的正比计数器测得 $10^4 "s"^(-1)$，求校正率；若改用死时间 $50 "µs"$ 的 G--M 管，在相同真实强度下会测得多少？
]
#solution[
  对非延长型模型 $m=n/(1+n tau)$，故由正比计数器观测率反求
  $
    n=m/(1-m tau)=1.064 times 10^4 "s"^(-1).
  $
  换用 G--M 管后
  $
    m_G=n/(1+n tau_G)=6.94 times 10^3 "s"^(-1).
  $
]

#exercise(subname: [10])[
  为什么卤素淬灭 G--M 管可用较粗阳极丝并在较低电压下工作？
]
#solution[
  卤素分子的电负性和亚稳态能量转移使放电在较低场强下即可形成并有效淬灭；正离子到达阴极前还会与卤素分子发生电荷交换，降低阴极二次电子发射。因此不必靠极细阳极丝产生极高局部场强，可采用较粗丝和较低工作电压。
]

#exercise(subname: [11])[
  G--M 管最大产生 $10^8$ 个电子—离子对，定标器阈值 $0.24 "V"$；管电容 $10 "pF"$、仪器输入电容 $20 "pF"$。求允许的最大分布电容。
]
#solution[
  脉冲幅度 $V=N e/C_("total")$，故
  $
    C_("total")<=N e/V_(t h)
      =10^8 times 1.602 times 10^(-19)/0.24
      =66.75 "pF".
  $
  扣除管和仪器的 $30 "pF"$，最大分布电容为 $36.75 "pF"$。
]

#exercise(subname: [12])[
  对 G--M 管阴极接地/丝极接正高压以及丝极接地/阴极接负高压的四种取样位置，画输出等效电路并标明脉冲极性和直流电位。

  #align(center, image("fig/7-gm-circuits.jpg", width: 76%))
]
#solution[
  放电时阳极收集电子、阴极收集正离子：阳极电位瞬时下降，故从阳极经隔直电容取样得到负脉冲；阴极电位瞬时上升，从阴极取样得到正脉冲。若直接耦合，信号叠加在对应的正高压或负高压直流电位上；经隔直电容后，输出基线回到地电位而交流脉冲极性不变。四种接法由“取样电极决定极性、耦合方式决定直流基线”即可画出。

  #grid(
    columns: (1fr, 1fr),
    gutter: 8pt,
    image("fig/7-gm-wave-negative-offset.jpg", width: 100%),
    image("fig/7-gm-wave-positive-offset.jpg", width: 100%),
    image("fig/7-gm-wave-negative-zero.jpg", width: 100%),
    image("fig/7-gm-wave-positive-zero.jpg", width: 100%),
  )
]
