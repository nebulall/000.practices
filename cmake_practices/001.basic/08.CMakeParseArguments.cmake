function(abc_f)
    cmake_parse_arguments(abc "SWITCH_ON" "VALUE" "HAHA" ${ARGN})
    message("\${ARGN}: " ${ARGN})
    message("abc_SWITCH_ON: " ${abc_SWITCH_ON})
    message("abc_VALUE: " ${abc_VALUE})
    message("abc_HAHA: " ${abc_HAHA})
endfunction()

abc_f(SWITCH_ON VALUE Lighting HAHA "A;B;C;D;E;F;G")
abc_f(SWITCH_ON HAHA "A;B;C;D;E;F;G" VALUE Lighting)  #终于看懂这个cmake_parse_arguments的逻辑了，这里输入的全是键值对，顺序无所谓前后



function(abc_f1)
    cmake_parse_arguments(abc "A0;A1" "B0;B1" [=[C0;C1]=] ${ARGN})
    message("A0: " ${abc_A0})
    message("A1: " ${abc_A1})
    message("B0: " ${abc_B0})
    message("B1: " ${abc_B1})
    message("C0: " ${abc_C0})
    message("C1: " ${abc_C1})
endfunction()

abc_f1(A0 A2 B0 myb0 B1 myb1 C0 x y z C1 a b c d e)

# 使用cmake_parse_arguments进行文件操作的案例
function(my_copy_func)
    message("ARGN: " ${ARGN})
    set(options OVERWRITE MOVE)
    set(oneValueArgs DESTINATION)
    set(multiValueArgs PATHS)
    cmake_parse_arguments(
        PARSE_ARGV 0
        my 
        "${options}" "${oneValueArgs}" "${multiValueArgs}"
    )
    message("OVERWRITE:\t" ${my_OVERWRITE})
    message("MOVE:\t\t" ${my_MOVE})
    message("DESTINATION:\t" ${my_DESTINATION})
    message("PATH:\t\t" ${my_PATHS})
    message("-----")
endfunction()

my_copy_func(DESTINATION ".." PATHS "1.txt" "2.txt" "3.txt" OVERWRITE)
my_copy_func(MOVE DESTINATION "../.." PATHS "4.txt" "5.txt")
my_copy_func(DESTINATION "../folder;name" PATHS 9.txt;10.txt)
    
