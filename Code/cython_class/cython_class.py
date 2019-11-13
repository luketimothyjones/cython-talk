# cython: language_level=3
# distutils: language=c++

import cython


@cython.cclass
class ExampleClass:
    num_list: list

    def __init__(self, number, size):
        self.generate_list(number, size)
        
    @cython.exceptval(-1)
    def generate_list(self, number, size:cython.int):
        self.num_list = [number] * size

    @cython.exceptval(None)
    def sum_loop(self):
        num_list_sum = 0
        
        for ind in range(len(self.num_list)):
            num_list_sum += self.num_list[ind]
        
        # Also works, but is .15s slower in Cython
        # num: cython.ulonglong
        # for num in self.num_list:
        #     num_list_sum += num
        
        return num_list_sum

    def sum_builtin(self):
        return sum(self.num_list)
