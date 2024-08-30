import math

a_v = 15.835
a_s = 18.33
a_c = 0.714
a_sym = 92.8
a_p = 11.2

c = 3 * 10**8
e = 1.602 * 10**-19
u = 1.660539 * 10**-27

m_n = 1.008665
m_H = 1.007825


def B_d(A, Z):
    if A % 2 != 0:
        return 0
    elif Z % 2 == 0:
        return a_p * A ** (-1 / 2)
    else:
        return -a_p * A ** (-1 / 2)


def B(A, Z):
    return (
        a_v * A
        - a_s * A ** (2 / 3)
        - a_c * Z**2 / A ** (1 / 3)
        - a_sym * (A / 2.0 - Z) ** 2 / A
        + B_d(A, Z)
    )


def Delta_m(A, Z):
    D = (B(A, Z) * 10**6 * e) / (c**2 * u)
    return D


def m(A, Z):
    return (A - Z) * m_n + Z * m_H - Delta_m(A, Z)


# print(m(12, 6))
# print(m(64, 29))
# print(m(107, 47))
# print(m(140, 58))
# print(m(238, 92))
print(B(236, 92))
print(B(235, 92))
print(B(236, 92) - B(235, 92))
