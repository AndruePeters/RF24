# let arg1 be the target name
# arg2 be the original file
function (copy_includes target source)
    execute_process(COMMAND cp ${source} ${CMAKE_BINARY_DIR}/utility/includes.h)
    target_include_directories(${target} PUBLIC ${CMAKE_BINARY_DIR})
endfunction()