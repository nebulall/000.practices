message("CMAKE预定义变量COMMAND:" ${CMAKE_COMMAND})
message("CMAKE宿主机名称:" ${CMAKE_HOST_SYSTEM_NAME})
message("CMAKE文件路径:" ${CMAKE_CURRENT_LIST_FILE})
message("CMAKE文件所在目录:" ${CMAKE_CURRENT_LIST_DIR})
message("CMAKE是否是UNIX:" ${UNIX})
message("CMAKE是否是WIN32:" ${WIN32})   #在Linux中，CMAKE未定义该变量，所以读出来为空
