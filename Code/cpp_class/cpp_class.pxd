# cython: language_level=3
# distutils: language=c++

import cython

from libcpp.vector cimport vector


cdef extern from "cpp_class.cpp" namespace "cpp_class":
    pass

cdef extern from "cpp_class.hpp" namespace "cpp_class":
    cdef cppclass ExampleClass:
        # One does not need to expose the entire class; only the parts that will be called from Cython/Python
        vector[cython.ulonglong] num_list
        
        ExampleClass(cython.ulonglong number, cython.int size) except +
        cython.ulonglong sum_loop()
