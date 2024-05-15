message("当前CMAKE进程中的\$ENV{PATH}的值为: " $ENV{PATH})
set(ENV{PATH} "mypath")
message("当前CMAKE进程中的\$ENV{PATH}的值为: " $ENV{PATH})