set(a 缓存变量a CACHE STRING "缓存变量a的描述")
set(a 普通变量a)
set(b 缓存变量b CACHE STRING "缓存变量b的描述")

message("\${a}的值是:" ${a})
message("\$CACHE{a}的值是:" $CACHE{a})

message("\${b}的值（其实是缓存变量）:" ${b})

get_property(cache_b_type CACHE b PROPERTY TYPE)
message("缓存变量b的类型是:" ${cache_b_type})

get_property(cache_b_descript CACHE b PROPERTY HELPSTRING)
message("缓存变量b的描述是:" ${cache_b_descript})

# 测试一下缓存的特性，两次存入，只存第一次
message("测试一下缓存的特性，两次存入，只存第一次")
set(step_test "第一次存入" CACHE STRING "")
message("step_test第一次存入后，其值为:" $CACHE{step_test})
set(step_test "尝试第二次存入" CACHE STRING "")
message("step_test在尝试第二次存入后，其值实际为:" $CACHE{step_test})
set(step_test "强制第三次存入" CACHE STRING "" FORCE)
message("step_test在强制第三次存入后，其值实际为:" $CACHE{step_test})