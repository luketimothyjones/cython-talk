class ExampleClass:

    def __init__(self, number, size):
        self.generate_list(number, size)

    def generate_list(self, number, size):
        """
        Generates a list of numbers [$number, $number, $number, ...] of length $size
        """

        self.num_list = [number] * size  # MUCH faster than [number for _ in range(size)]

    def sum_loop(self):
        num_list_sum = 0

        # This format is ~2x faster than `for i in range(...)` in Python
        for num in self.num_list:
            num_list_sum += num
        
        return num_list_sum

    def sum_builtin(self):
        return sum(self.num_list)
