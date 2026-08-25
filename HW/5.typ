#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(5)

#exercise(subname: [1])[
  借助射程—能量曲线估算 $5 "MeV"$ 的 $alpha$ 粒子和质子在硅中的阻止时间。
]
#solution[
  连续慢化近似下，射程和慢化时间分别为
  $
    R=integral_0^(E_0) 1/(S(E)) dif E, quad
    t=integral_0^(E_0) 1/(v(E)S(E)) dif E.
  $
  将图中读出的 $R(E)$ 分段代入上式积分，得到 $alpha$ 粒子约 $2.15 "ps"$，质子约 $2.08 "ps"$。二者虽射程差异较大，但速度和阻止本领的共同作用使停止时间处在相同皮秒量级。
]

#exercise(subname: [2])[
  利用空气中 $alpha$ 射程经验式及射程换算关系，求 $3 "MeV"$ 氘核与同能电子在 Al2O3 中的射程。
]
#solution[
  先由同速度标度把氘核等效为相应能量的 $alpha$ 粒子，再由质量阻止本领混合规则
  $
    1/R_m=sum_i w_i/R_(m,i)
  $
  从空气换算至 Al2O3，最后除以密度 $3.5 "g/cm"^3$ 得线性射程。电子则使用电子的经验质量射程式。代入题给经验系数可得氘核射程约为 $9.4 times 10^(-3) "cm"$，电子约为 $0.43 "cm"$。
]

#exercise(subname: [3])[
  估算 $9 "MeV"$ 的 $alpha$ 粒子与电子在铅中的辐射能损率之比，并求电子的辐射损失占总损失的比例。
]
#solution[
  重粒子的制动辐射损失相对电子受 $z^2(m_e/M)^2$ 抑制。按题给公式代入 $z_alpha=2,M_alpha approx 7294m_e$，得到两者辐射损失率相差约 $7.4 times 10^4$ 倍。电子在铅中的临界能量约 $E_c approx 7.4 "MeV"$，故在 $9 "MeV"$ 时
  $
    S_("rad")/S_("col") approx E/E_c,
  $
  辐射损失分数 $S_("rad")/(S_("rad")+S_("col")) approx 0.55$。
]

#exercise(subname: [4])[
  说明自由电子不能吸收单个光子完成光电效应、康普顿散射不能把全部光子能量交给电子，并分析铅中的 $3 "MeV"$ 光子。
]
#solution[
  单个自由电子若完全吸收光子，四动量守恒将要求初末电子同时满足壳上条件，二者矛盾；康普顿散射后光子能量
  $
    E' = E/(1 + E/(m_e c^2)(1-cos theta))
  $
  始终大于零。因此自由电子光电吸收和康普顿全能量转移均不可能；束缚原子或原子核必须承担反冲动量。
]

#exercise(subname: [5])[
  比较下列情形中光电截面 $sigma_(p h)$、康普顿截面 $sigma_C$ 和电子对截面 $sigma_P$：$100 "keV"$ 光子与 Be、Ag；$1 "MeV"$ 光子与 Al；$10 "MeV"$ 光子与 C、Pb。
]
#solution[
  由相互作用分区图：$100 "keV"$ 与 Be 时 $sigma_C>sigma_(p h)>sigma_P=0$；与 Ag 时 $sigma_(p h)>sigma_C>sigma_P=0$；$1 "MeV"$ 与 Al 时 $sigma_C>sigma_(p h)>sigma_P$；$10 "MeV"$ 与 C 时 $sigma_C>sigma_P>sigma_(p h)$；$10 "MeV"$ 与 Pb 时 $sigma_P>sigma_C>sigma_(p h)$。
]

#exercise(subname: [6])[
  $3 "MeV"$ 准直 $gamma$ 射线穿过薄铅片，在 $10 degree$ 方向探测次级电子。求该方向的光电子和康普顿反冲电子能量，并求与反冲电子符合的散射光子方向。铅 K、L 层结合能为 $88.1$、$15 "keV"$。
]
#solution[
  光电子动能为 $T_e=E_gamma-B$，故 K、L 光电子分别约为 $2.912$ 与 $2.985 "MeV"$。康普顿运动学联立能量、动量守恒；若电子相对入射方向为 $phi$，则
  $
    tan phi=E' sin theta/(E-E'cos theta), quad
    E'=E/[1+E/(m_e c^2)(1-cos theta)].
  $
  令 $phi=10 degree$ 解得散射角，再由 $T_e=E-E'$ 得反冲电子能量；对应另一几何支分别约为 $theta=79 degree$、$T_e=2.48 "MeV"$。
]

#exercise(subname: [7])[
  求 $511 "keV"$ 光子在水中的线性衰减系数和平均自由程，并说明经过一个平均自由程后的能量与强度。
]
#solution[
  水中氢、氧的质量分数为 $2/18$ 与 $16/18$，故
  $
    mu/rho=2/18 dot 0.17+16/18 dot 0.086=0.0953 "cm"^2/"g".
  $
  取 $rho=1 "g/cm"^3$，$mu=0.0953 "cm"^(-1)$，平均自由程 $ell=10.49 "cm"$。窄束中未发生相互作用的光子能量仍为 $511 "keV"$，强度降为 $I_0/e$。
]

#exercise(subname: [8])[
  计算 $1$、$3$、$5 "MeV"$ 光子在 $90 degree$ 与 $180 degree$ 康普顿散射后的光子能量。
]
#solution[
  用 $E'=E/[1+E/(0.511 "MeV")(1-cos theta)]$。依次得到：$1 "MeV"$ 时 $E'_(90)=0.338 "MeV"$、$E'_(180)=0.203 "MeV"$；$3 "MeV"$ 时为 $0.437$、$0.235 "MeV"$；$5 "MeV"$ 时为 $0.463$、$0.243 "MeV"$。
]

#exercise(subname: [9])[
  单能窄束通过 $1,3,5,7 "cm"$ 铅后的强度为 $901,204,45,10 "s"^(-1)$。求衰减系数、平均自由程，并估计光子能量。
]
#solution[
  对 $ln I=ln I_0-mu x$ 作直线拟合，斜率给出
  $
    mu approx 0.75 "cm"^(-1), quad ell=1/mu approx 1.33 "cm".
  $
  质量衰减系数为 $mu/rho approx 0.066 "cm"^2/"g"$。与铅的质量衰减系数表比较，对应光子能量约为 $1 "MeV"$。
]

#exercise(subname: [10])[
  单能窄束通过 $5 "cm"$ 铅后强度降到十分之一，求通过 $1 "cm"$ 后的强度比。
]
#solution[
  由 $e^(-5mu)=0.1$，
  $
    I(1)/I_0=e^(-mu)=0.1^(1/5)=0.631.
  $
]
