CXXFLAGS = -std=c++11 -g -fPIC 
LDDFLAGS = -std=c++11 -g -shared

PY2ROOT = ${PREFIX}
BOOST2ROOT = ${PREFIX}
PY2FLAGS = -I${PY2ROOT}/lib/python2.7/site-packages/numpy/core/include -I${PY2ROOT}/include/python2.7 -I${BOOST2ROOT}/include
PY2LIBS = ${BOOST2ROOT}/lib/x86_64-linux-gnu/libboost_python.so ${PY2ROOT}/lib/python2.7/config-x86_64-linux-gnu/libpython2.7.so

all: test2.so test

test: test2.so
	 ./run.sh

test2.so: Makefile test.cpp
	c++ ${CXXFLAGS} ${PY2FLAGS} -DMODULE_NAME=test2 -c test.cpp -o test2.o
	c++ ${LDDFLAGS} -o test2.so test2.o  ${PY2LIBS}


clean:
	rm *.o *.so *.log
