# Copies an includes file from one of the utility drivers and then adds it to target
#
# target - cmake target that has this file added in its target_include_directories
# source - path to source file for the original includes
function (copy_includes target source)
    execute_process(COMMAND cp ${source} ${CMAKE_BINARY_DIR}/utility/includes.h)
    target_include_directories(${target} PUBLIC ${CMAKE_BINARY_DIR})
endfunction()