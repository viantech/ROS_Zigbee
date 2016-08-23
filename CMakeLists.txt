cmake_minimum_required(VERSION 2.8.3)
project(serial_example)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  serial
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    serial
    std_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(serial_example_node 
					src/serial_example_node.cpp
			    	src/ConfigFile_Handler.cpp	
				)

target_link_libraries(serial_example_node
  ${catkin_LIBRARIES}
)

## set flags for compiler
set(CMAKE_CXX_FLAGS "-fPIC -std=c++0x -O0 -g3 -Wall -fmessage-length=0 -pthread")

#clean:  
#    find . -type f | xargs -n 5 touch
#    rm -rf $(OBJS)