import numpy as np
import math
# try:
#     import pkg_resources.py2_warn
# except ImportError:
#     pass


def solve_complex_equation(x, y):
    return (x+y) * math.sqrt(9)


def main():
    x = np.array([1, 2])
    y = np.array([3, 7])
    z = solve_complex_equation(x, y)
    print("Hello world i just solved a very complex equation {0}".format(z))


if __name__ == "__main__":
    main()
