include(P01.PrintList.cmake)

set(var1 a b2 c4 您好世界 d7)
set(var2 a;b2;c4;您好世界;d7)
set(var3 "a;b2\;c4;您好世界;d7")  #转义字符\;只在“”中才生效
print_list("${var1}")    #这里注意把列表往function中传递时，要用引号引起来，不然只传进列表中的第一个元素
print_list("${var2}")
print_list("${var3}")