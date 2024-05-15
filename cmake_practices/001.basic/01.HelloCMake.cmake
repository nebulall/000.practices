message(您好,CMake!)
message("a"  # 这是一行注释
        "b")    #这也是一行注释

#[[ 这是一个括号注释
它可以由多行文本组成，直到遇到两个终止方括号]]
message("a" #[=[程序中间也可以插入一段注释]=] "b")

message(a b c)

message("CMake
您好")

message("\
CMake\
您好!\
")

message("x;y;z")
message(x y z)
message(x;y;z)

set(var_a 您好MR梁)
message(${var_a})