cmake_minimum_required(VERSION 3.2)  #没有最小版本限定的条件下，Policy会报异常，YES和TRUE等都是高版本Cmake才有的
if(ABC)
else()
    message("ABC不是一个已定义的变量，因此条件为假")
endif()

set(a "XYZ")
set(b "0")
set(c "a-NOTFOUND")

if(a)
    message("a是一个变量，其值为非假值常量，因此条件为真")
endif()

if(b)
else()
    message("b是一个变量，其值为假值常量，因此条件为假")
endif()

if(c)
else()
    message("c是一个变量，其值为假值常量，因此条件为假")
endif()

if(NOT OFF)
    message("NOT OFF为真")
endif()

if(ON AND YES)
    message("ON AND YES为真")
endif()

if(TRUE AND NOTFOUND)
else()
    message("TRUE AND NOTFOUND为假")
endif()

if(A-NOTFOUND OR YES)
    message("A-NOTFOUND OR YES为真")
endif()