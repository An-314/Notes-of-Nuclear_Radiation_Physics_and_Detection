#import "common.typ": homework
#import "@preview/scripst:1.1.2": exercise, solution

#show: homework(2)

#exercise(subname: [1])[
  放射性核素平均寿命的含义是什么？活度经过一个平均寿命后衰减为原来的多少？
]
#solution[
  单个核的生存时间服从密度 $f(t)=lambda e^(-lambda t)$，其期望值为
  $
    tau = integral_0^infinity t lambda e^(-lambda t) dif t = 1/lambda,
  $
  且 $tau=T_(1/2)/ln 2$。因此
  $
    A(tau)/A_0=e^(-lambda tau)=e^(-1) approx 0.368.
  $
]

#exercise(subname: [2])[
  某罐核废水中 Ru-106、Sr-90、I-129 的活度分别为 $36.2$、$1.43 times 10^5$、$27.3 "Bq/L"$，排放限值分别为 $100$、$30$、$9 "Bq/L"$。（1）求衰变常数和平均寿命；（2）若无母体补充，求自然衰减到限值所需时间。
]
#solution[
  用 $lambda=ln 2/T_(1/2)$、$tau=1/lambda$。取 $T_(1/2)$ 分别为 $373.59 "d"$、$28.90 "a"$、$1.57 times 10^7 "a"$，得到
  $
    lambda_("Ru")=1.855 times 10^(-3) "d"^(-1), quad tau_("Ru")=539 "d",
  $
  $
    lambda_("Sr")=2.399 times 10^(-2) "a"^(-1), quad tau_("Sr")=41.7 "a",
  $
  $
    lambda_I=4.415 times 10^(-8) "a"^(-1), quad tau_I=2.27 times 10^7 "a".
  $
  Ru-106 已低于限值，可立即排放。其余用 $t=lambda^(-1)ln(A_0/A_L)$，得 Sr-90 约 $353 "a"$，I-129 约 $2.51 times 10^7 "a"$。
]

#exercise(subname: [3])[
  讨论 Sr-90 $arrow$ Y-90 母女核链中女核活度与总活度的变化。
]
#solution[
  纯母源初始无女核时，Bateman 方程给出
  $
    N_2(t)=lambda_1 N_10/(lambda_2-lambda_1) (e^(-lambda_1 t)-e^(-lambda_2 t)).
  $
  因而
  $
    A_1=lambda_1 N_10 e^(-lambda_1t), quad
    A_2=lambda_2 N_2.
  $
  解 $A_1=A_2$ 得
  $
    t_(eq)=1/(lambda_2-lambda_1) ln((2lambda_2-lambda_1)/lambda_2)
    approx 64.1 "h".
  $
  女核活度极大条件 $dif A_2/dif t=0$ 等价于 $A_1=A_2$，故同样约 $64.1 "h"$。总活度的极大条件 $dif(A_1+A_2)/dif t=0$ 给出约 $70.2 "h"$。
]

#exercise(subname: [4])[
  一份天然铀矿石含 $300 "g"$ 铀，只考虑 U-235 和 U-238。排尽气体后密封数月，问其中积累多少个氡原子？
]
#solution[
  数月足以使短寿命氡与其长寿命铀母体近似达到长期平衡，故每条衰变链有 $A_("Rn")=A_U$，即
  $
    N_("Rn")=lambda_U N_U/lambda_("Rn").
  $
  分别按天然丰度 $0.7204%$ 与 $99.2742%$ 求 U-235、U-238 原子数，再计入两条链相应的氡核，得到
  $
    N_("Rn") approx 1.85 times 10^12.
  $
]

#exercise(subname: [5])[
  某样品初始仅含一种母核，衰变过程中建立两代暂时平衡。根据给出的总活度—时间数据求两代衰变常数。
]
#solution[
  总活度可写成两个指数项的线性组合：
  $
    A(t)=A_1(0)e^(-lambda_1t)
      +lambda_2 lambda_1 N_1(0)/(lambda_2-lambda_1)
       (e^(-lambda_1t)-e^(-lambda_2t)).
  $
  对晚期下降段作 $ln A$—$t$ 线性拟合先得较小衰变常数，再从剥离后的快分量求另一斜率。数据拟合结果为
  $
    lambda_1 approx 0.1311 "h"^(-1), quad
    lambda_2 approx 0.05496 "h"^(-1).
  $
  由 $dif A/dif t=0$ 得活度峰约在 $t=2.5 "h"$。
]

#exercise(subname: [6])[
  用氘轰击 Mn-55 产生半衰期为 $2.579 "h"$ 的 Mn-56。产生率为 $6 times 10^8 "s"^(-1)$，求照射 $5.158$、$10$、$48 "h"$ 后的活度。
]
#solution[
  设产生率为 $P$，有
  $
    dif N/dif t=P-lambda N, quad
    A(t)=lambda N=P(1-e^(-lambda t)),
  $
  其中 $lambda=ln 2/2.579 "h"^(-1)$。因此
  $
    A(5.158 "h")=4.50 times 10^8 "Bq",
  $
  $
    A(10 "h")=5.59 times 10^8 "Bq", quad
    A(48 "h")=6.00 times 10^8 "Bq".
  $
  最后一项已非常接近饱和活度 $P$。
]

#exercise(subname: [7])[
  地球年龄为 $4.6 times 10^9 "a"$，当前铀矿中 U-238/U-235 数量比约为 $138$。求地球形成时的数量比。
]
#solution[
  设初始比为 $R_0$，则
  $
    R(t)=R_0 exp[-(lambda_238-lambda_235)t].
  $
  因而
  $
    R_0=138 exp[(lambda_238-lambda_235)t]
       =138 dot 2^(t/T_238-t/T_235).
  $
  取 $T_238=4.468 times 10^9 "a"$、$T_235=7.04 times 10^8 "a"$，得
  $
    R_0 approx 3.04.
  $
]

#exercise(subname: [8])[
  某古墓碳屑样品的 C-14 相对含量为现代样品的 $82%$，求古墓年代。
]
#solution[
  由
  $
    N/N_0=2^(-t/T_(1/2))=0.82
  $
  得
  $
    t=-T_(1/2) ln(0.82)/ln 2.
  $
  取题目核素表中的 $T_(1/2)=5700 "a"$，得到 $t approx 1.63 times 10^3 "a"$。
]
