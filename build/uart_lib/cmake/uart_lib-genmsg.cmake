# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "uart_lib: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iuart_lib:/home/ubuntu/catkin_ws/src/uart_lib/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(uart_lib_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg" NAME_WE)
add_custom_target(_uart_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uart_lib" "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg" "std_msgs/MultiArrayLayout:std_msgs/MultiArrayDimension:std_msgs/UInt8MultiArray"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(uart_lib
  "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt8MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uart_lib
)

### Generating Services

### Generating Module File
_generate_module_cpp(uart_lib
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uart_lib
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(uart_lib_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(uart_lib_generate_messages uart_lib_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg" NAME_WE)
add_dependencies(uart_lib_generate_messages_cpp _uart_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uart_lib_gencpp)
add_dependencies(uart_lib_gencpp uart_lib_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uart_lib_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(uart_lib
  "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt8MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uart_lib
)

### Generating Services

### Generating Module File
_generate_module_lisp(uart_lib
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uart_lib
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(uart_lib_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(uart_lib_generate_messages uart_lib_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg" NAME_WE)
add_dependencies(uart_lib_generate_messages_lisp _uart_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uart_lib_genlisp)
add_dependencies(uart_lib_genlisp uart_lib_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uart_lib_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(uart_lib
  "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt8MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uart_lib
)

### Generating Services

### Generating Module File
_generate_module_py(uart_lib
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uart_lib
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(uart_lib_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(uart_lib_generate_messages uart_lib_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/uart_lib/msg/usr_message.msg" NAME_WE)
add_dependencies(uart_lib_generate_messages_py _uart_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uart_lib_genpy)
add_dependencies(uart_lib_genpy uart_lib_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uart_lib_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uart_lib)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uart_lib
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(uart_lib_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uart_lib)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uart_lib
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(uart_lib_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uart_lib)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uart_lib\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uart_lib
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(uart_lib_generate_messages_py std_msgs_generate_messages_py)
