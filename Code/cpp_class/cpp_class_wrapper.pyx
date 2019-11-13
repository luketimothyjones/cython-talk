# cython: language_level=3
# distutils: language=c++

cimport cython

from cpp_class cimport ExampleClass as CPP_ExampleClass


cdef class ExampleClass:

    cdef CPP_ExampleClass* _cpp_class  # Pointer to the C++ class we're wrapping

    def __cinit__(self, cython.ulonglong number, cython.int size):
        self._cpp_class = new CPP_ExampleClass(number, size)

    cpdef cython.ulonglong sum_loop(self):
        return self._cpp_class.sum_loop()

    cpdef sum_builtin(self):
        # Note that this method does not exist in the C++ class
        return sum(self._cpp_class.num_list)

    def __dealloc__(self):
        # Must be expressly defined due to CPP_ExampleClass taking arguments in its constructor;
        # that is, having no definition for CPP_ExampleClass()
        del self._cpp_class
