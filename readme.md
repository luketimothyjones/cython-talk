# Cython Basics Presentation Resources
### Nov. 11th 2019, PyEugene meetup

&nbsp;

![Python with authors of C, C++, and Python as its heads](/Presentation/three-headed-python.png)

&nbsp;

---
## Installing Requirements

The first thing you will need to do is get set up with a **C++ compiler**, such as `gpp`. This should be straightforward for Linux and macOS users. Windows users can use the [MinGW port of `gpp`](http://www.codebind.com/cprogramming/install-mingw-windows-10-gcc/) or Visual Studio's compiler, but note that you may run into `.pyd` portability issues if you go the VS route.

Next, you will need **Python 3.6+** -- all of my testing was done on Python 3.8, but so long as your version supports type annotations you *should* be good to go.

Assuming you have `pip` available (if not, you should), you can then download this repository and run `pip install -r requirements.txt` to install `Cython` and its requirements as well as `tabulate`, which is used for formatting the benchmark data.

&nbsp;

## Getting Started

All of the source code is in `/Code`, and the presentation files are in `/Presentation`.

`build_all.sh` and `build_all.bat` will automatically compile all of the source code in the repository for you using `cythonize`, which should be in your environment variables after installing `Cython`. If not, it is located in `[python install location]/Scripts/`. The scripts also tell `cythonize` to spit out HTML annotations of the code for studying purposes.

&nbsp;

## Additional Resources

Here is a collection of resources that will greatly improve your life while learning `Cython`

&nbsp;

- [`Cython` GitHub Repository](https://github.com/cython/cython)  

    - [`Cython` Built-in C/++ `stdlib`, `cpython`, and `numpy` Wrappers](https://github.com/cython/cython/tree/master/Cython/Includes)

&nbsp;

- [Cython ReadTheDocs](https://cython.readthedocs.io/en/latest/index.html)
    - [Pure Python Mode](http://docs.cython.org/en/latest/src/tutorial/pure.html)
    - [`cdef` Classes](http://docs.cython.org/en/latest/src/tutorial/cdef_classes.html)
    - [Using C++ In Cython](http://docs.cython.org/en/latest/src/userguide/wrapping_CPlusPlus.html)
    - [Using C Libraries](https://cython.readthedocs.io/en/latest/src/tutorial/clibraries.html)
    - [Interfacing With External C Code](http://docs.cython.org/en/latest/src/userguide/external_C_code.html)
    - [Managing the GIL](http://docs.cython.org/en/latest/src/userguide/external_C_code.html?#acquiring-and-releasing-the-gil)
    - [Cython for NumPy Users](https://cython.readthedocs.io/en/latest/src/userguide/numpy_tutorial.html)  

&nbsp;

- [Paul Ross's *Notes on Cython*](https://notes-on-cython.readthedocs.io/en/latest/index.html)
