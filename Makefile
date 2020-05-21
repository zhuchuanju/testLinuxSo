CROSS =
CC = $(CROSS)gcc 
CXX = $(CROSS)g++ --std=c++11
DEBUG = -g -O2
CFLAGS = $(DEBUG) -Wall -c
FPIC = -fpic
SHARE = -shared
RM = rm -rf 

SRCS = $(wildcard ./*.cpp)
OBJS = $(patsubst %.cpp, %.o, $(SRCS))

HEADER_PATH = -I./add
LIB_PATH = -L /home/zcj/winCode/mylib/
LIBS = -laddlib

CREATE_ADD = dirADD
CREATE_TARGET = main

CLEAR_ADD = clearDirADD
CLEAR_TARGET = clearMain

all: $(CREATE_ADD) $(CREATE_TARGET)
clean: $(CLEAR_ADD) $(CLEAR_TARGET)

# 动态库创建过程
$(CREATE_ADD):
	$(MAKE) -C add/
	
# 动态库清理过程
$(CLEAR_ADD):
	$(MAKE) clean -C add/

# 主程序创建过程
$(CREATE_TARGET):$(OBJS)
	$(CXX) $^ -o $@ $(LIB_PATH) $(LIBS)
$(OBJS):%.o:%.cpp
	$(CXX) $(CFLAGS) $(HEADER_PATH) $< -o $@ 

# 主程序清理过程
$(CLEAR_TARGET):
	$(RM) $(CREATE_TARGET) $(OBJS)