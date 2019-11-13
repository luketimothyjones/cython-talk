SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

cythonize $SCRIPTPATH/cpp_class/cpp_class_wrapper.pyx -i -a
cythonize $SCRIPTPATH/cython_class/cython_class.py -i -a
cythonize $SCRIPTPATH/pure_cython_class/pure_cython_class.pyx -i -a
