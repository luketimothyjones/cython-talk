#include "cpp_class.hpp"
#include <vector>

namespace cpp_class {

    ExampleClass::ExampleClass(ulonglong number, int size) {
        // Initializer / Constructor
        this->num_list = std::vector<ulonglong>();
        this->generate_list(number, size);
        }

        void ExampleClass::generate_list(ulonglong number, int size) {
            this->num_list.resize(size, number);
        }
        
        ulonglong ExampleClass::sum_loop() {
            ulonglong num_list_sum = 0;
            
            for (int i=0; i < this->num_list.size(); i++) {
               num_list_sum += this->num_list[i];
            }
            
            return num_list_sum;
        };
        
        ExampleClass::~ExampleClass() {
            // Deconstructor
            this->num_list.clear();
    }
}
