# cython: language_level=3
# distutils: language=c++

cimport cython

from libcpp.vector cimport vector


cdef class ExampleClass:
    cdef vector[cython.ulonglong] num_list

    def __cinit__(self, number:cython.ulonglong, size:cython.int):
        self._generate_list(number, size)

    cdef _generate_list(self, number:cython.ulonglong, size:cython.int):
        self.num_list.resize(size, number)

    cpdef cython.ulonglong sum_loop(self):
        cdef cython.ulonglong num_list_sum = 0
        
        for ind in range(self.num_list.size()):
            num_list_sum += self.num_list[ind]
        
        # Also works, but is ~.0011s slower
        # cdef cython.ulonglong num
        # for num in self.num_list:
        #     num_list_sum += num
        
        return num_list_sum

    cpdef sum_builtin(self):
        return sum(self.num_list)
