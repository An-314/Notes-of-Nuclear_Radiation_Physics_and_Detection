#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(3)

#exercise(subname: [1])[
  Ra-226 的 $alpha$ 谱含 $4.784 "MeV"$（$93.84%$）和 $4.601 "MeV"$（$6.16%$）两支，并伴随 $186 "keV"$ 的 $gamma$ 射线（$3.64%$）。求子核反冲能、衰变能、两支 $alpha$ 的最小轨道角动量、$gamma$ 跃迁类型与级次、内转换系数，并画衰变纲图。
]
#solution[
  忽略相对论修正，两体衰变满足
  $
    T_R=4/222 T_alpha, quad Q=226/222 T_alpha.
  $
  对主支，$T_R=86.2 "keV"$、$Q=4.870 "MeV"$；次支相应为 $82.9 "keV"$、$Q=4.684 "MeV"$，两者相差约 $186 "keV"$，故次支布居 Rn-222 的 $186 "keV"$ 激发态。

  Ra-226 基态为 $0^+$，Rn-222 基态为 $0^+$，故主支 $l_alpha=0$。$186 "keV"$ 能级经 E2 跃迁到 $0^+$ 基态，因而其 $J^pi=2^+$，次支需 $l_alpha=2$。若每次布居该能级随后只以 $gamma$ 或内转换退激，则
  $
    alpha_(I C)=I_(alpha,"exc")/I_gamma-1
      =6.16/3.64-1 approx 0.692.
  $
  衰变纲图为 Ra-226$(0^+)$ 分别以 $l=0$、$l=2$ 布居 Rn-222 的 $0^+$ 与 $2^+(186 "keV")$，后者以 E2 跃迁至基态。

  #align(center, image("fig/3-ra.svg", width: 82%))
]

#exercise(subname: [2])[
  比较 Ra-226 连续三次 $alpha$ 衰变与直接放出 C-12 团簇到 Pb-214 的总衰变能和库仑势垒，并说明为何前者占优势。
]
#solution[
  各步 $Q$ 值均由 $Q=[M_P-M_D-M_c]c^2$ 求得；三次 $alpha$ 的 $Q$ 值之和与直接 C-12 发射的总质量差相同，约为 $19.7 "MeV"$，体现质量差的路径无关性。

  但势垒近似为
  $
    V_C=1.440 Z_c Z_d/[r_0(A_c^(1/3)+A_d^(1/3))] "MeV".
  $
  C-12 的电荷为 6，势垒远高于 $alpha$ 粒子的势垒；穿透率又对 $Z_c Z_d/sqrt(Q)$ 指数敏感。因此即使总 $Q$ 相近，直接团簇衰变也被强烈抑制，连续 $alpha$ 衰变更易发生。
]

#exercise(subname: [3])[
  Cu-64、As-74 和 Br-80 均可发生 $beta^-$、$beta^+$ 与电子俘获。说明这类核素的 $A,Z$ 特征，并计算 Br-80 三种衰变的端点能量以及电子俘获中微子和反冲核的能量、动量。
]
#solution[
  这三个核均为偶 $A$、奇 $Z$ 的奇奇核，位于同量异位素质量抛物线较高处，向 $Z-1$ 和 $Z+1$ 两侧都可能降低质量。原子质量表示下
  $
    Q_(beta^-)= [M(A,Z)-M(A,Z+1)]c^2,
  $
  $
    Q_(beta^+)=[M(A,Z)-M(A,Z-1)-2m_e]c^2,
  $
  $
    Q_(E C)=[M(A,Z)-M(A,Z-1)]c^2.
  $
  代入 Br-80、Kr-80、Se-80 的质量过剩，得到 $beta^-$ 端点约 $2.00 "MeV"$、$beta^+$ 端点约 $0.84 "MeV"$，电子俘获中微子能量约 $1.87 "MeV"$。忽略束缚修正时 $p_nu=E_nu/c$，子核反冲能 $T_R=p_nu^2/(2M_D)$，约为几十 eV。
]

#exercise(subname: [4])[
  根据题给 As-74 的两组 $beta^-$、两组 $beta^+$、电子俘获和两条 E2 $gamma$ 射线的能量与强度，构造衰变纲图。
]
#solution[
  同一子核中两条 $beta$ 端点能量之差等于所布居能级之差。$1353-718=635 "keV"$，故 As-74 的 $beta^-$ 分别布居 Se-74 基态与 $635 "keV"$ 激发态，后者以 $635 "keV"$ 的 E2 光子退激。类似地，$1540-945=595 "keV"$，$beta^+$ 和与之竞争的电子俘获分别布居 Ge-74 基态与 $595 "keV"$ 激发态，后者以 $595 "keV"$ 的 E2 光子退激。各支强度按题给 $19%、15%、3%、26%$ 及 EC 的 $4%、33%$ 标注，便得到完整纲图。

  #align(center, image("fig/3-as.svg", width: 92%))
]

#exercise(subname: [5])[
  判断下列 $beta$ 衰变的跃迁级次：$1/2^+ arrow 1/2^-$、$7/2^+ arrow 3/2^+$、$0^+ arrow 3^-$、$9/2^+ arrow 1/2^-$。
]
#solution[
  轻子轨道角动量为 $L$ 时宇称因子为 $(-1)^L$，并应满足 $abs(Delta J-S)<=L<=Delta J+S$，其中轻子总自旋 $S=0,1$。因此：$1/2^+ arrow 1/2^-$ 有 $Delta J=0$ 且宇称变，为一级禁戒非唯一；$7/2^+ arrow 3/2^+$ 有 $Delta J=2$ 且宇称不变，为二级禁戒非唯一；$0^+ arrow 3^-$ 有 $Delta J=3$ 且宇称变，为三级禁戒非唯一；$9/2^+ arrow 1/2^-$ 有 $Delta J=4$ 且宇称变，最低偶 $L$ 为 4，故为四级禁戒。若按教材以唯一禁戒的 $Delta J=L+1$ 分类，则相应标注还需注明唯一/非唯一属性。
]

#exercise(subname: [6])[
  Cs-137 半衰期 $30.17 "a"$，以 $94.6%$ 分支衰变至 Ba-137m。已知 Ba-137m 奇核子在 $1h_(11/2)$，Ba-137 基态奇核子在 $2d_(3/2)$；且 $alpha_K=0.092$、$I_K/I_L=5.66$、$I_M/I_L=0.26$。（1）求两能级的 $J^pi$；（2）求 $1 "mg"$ Cs-137 每秒发出的内转换电子数。
]
#solution[
  轨道宇称为 $(-1)^l$，故 Ba-137m 为 $11/2^-$，基态为 $3/2^+$。

  由 $alpha_K=I_K/I_gamma=0.092$，有
  $
    alpha_L=alpha_K/5.66, quad alpha_M=0.26 alpha_L,
  $
  因而总内转换系数 $alpha approx 0.1125$，每次退激发出内转换电子的概率为 $alpha/(1+alpha)=0.1011$。样品活度
  $
    A=lambda N=ln 2/(30.17 "a") dot (10^(-3)/137)N_A
      approx 3.20 times 10^9 "s"^(-1).
  $
  所以内转换电子率
  $
    n_e=A dot 0.946 dot alpha/(1+alpha)
      approx 3.06 times 10^8 "s"^(-1).
  $
]

#exercise(subname: [7])[
  说明 Ge-76 为何能发生双 $beta$ 衰变、能否发生普通 $beta$ 衰变，并求到子核基态的无中微子双 $beta$ 衰变中两电子的总动能和总角动量。
]
#solution[
  同量异位素质量抛线使 $M_("Ge-76")>M_("Se-76")+2m_e$，故双 $beta^-$ 的 $Q$ 值为正；但中间核 As-76 的质量更高，$M_("Ge-76")<M_("As-76")+m_e$，故普通单 $beta^-$ 衰变被禁止。双 $beta$ 衰变能
  $
    Q_(2beta)=[M_("Ge-76")-M_("Se-76")]c^2 approx 2.039 "MeV".
  $
  无中微子过程没有中微子带走能量，忽略反冲时两电子总动能即 $2.039 "MeV"$。基态到基态为 $0^+ arrow 0^+$，故两电子总角动量耦合为零。
]

#pagebreak()
#exercise(subname: [8])[
  某核四个近似等距能级从低到高为 $1^+$、$5^-$、$2^+$、$5^+$。画出最可能的 $gamma$ 跃迁并标明多极性。
]
#solution[
  跃迁须满足 $abs(J_i-J_f)<=L<=J_i+J_f$，并优先取最低允许 $L$。电多极 $E L$ 的宇称因子为 $(-1)^L$，磁多极 $M L$ 为 $(-1)^(L+1)$。因此 $5^- arrow 1^+$ 最低为 M4；$2^+ arrow 1^+$ 最低为 M1/E2 混合；$5^+ arrow 2^+$ 最低为 M3/E4，其中通常较低级次占优。跨越更多能级的跃迁多极级次更高，受到抑制。

  #align(center, image("fig/3-levels.svg", width: 65%))
]

#exercise(subname: [9])[
  用 Fe-57 的 $14.4 "keV"$ 穆斯堡尔线测重力红移。源与吸收体高度差 $400 "m"$，求实现共振所需相对速度。
]
#solution[
  重力红移 $Delta E/E=g h/c^2$，一阶多普勒移为 $Delta E/E=v/c$，故
  $
    v=g h/c=9.8 times 400/(3 times 10^8)
      =1.31 times 10^(-5) "m/s".
  $
  速度方向应使多普勒频移补偿重力频移。
]
