from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules=cythonize("sum_by_to.pyx"),
)
