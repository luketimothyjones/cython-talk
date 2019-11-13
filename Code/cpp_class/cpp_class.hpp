#include <vector>

#ifndef CPP_CLASS_HPP
#define CPP_CLASS_HPP

typedef unsigned long long ulonglong;  // For consistency with Cython

namespace cpp_class {
    class ExampleClass {
        public:
            std::vector<ulonglong> num_list;
            ExampleClass(ulonglong number, int size);
            ~ExampleClass();  // Destructor
            ulonglong sum_loop();
            void generate_list(ulonglong number, int size);
    };
}

#endif
