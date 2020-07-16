import numpy as np
import hello_world as hello


def test_solve_complex_equation():
    z = hello.solve_complex_equation(np.array([1, 2]), np.array([3, 7]))
    assert z[0] == 12
    assert z[1] == 27
