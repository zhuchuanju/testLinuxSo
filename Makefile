CROSS =
CC = $(CROSS)gcc 
CXX = $(CROSS)g++ --std=c++11
DEBUG = -g -O2
CFLAGS = $(DEBUG) -Wall -c
FPIC = -fpic
SHARE = -shared
RM = rm -rf 

#SOURCES:=$(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
SRCS = $(wildcard ./*.cpp)
OBJS = $(patsubst %.cpp, %.o, $(SRCS))

HEADER_PATH = -I./add \
			  -I./divide \
			  -I./multiply \
			  -I./subtract
			  
LIB_PATH = -L ./lib/

LIBS = -laddlib \
	   -ldivlib \
	   -lmullib \
	   -lsublib 

CREATE_ADD = createAdd
CREATE_DIV = createDiv
CREATE_MUL = createMul
CREATE_SUB = createSub
CREATE_TARGET = main

CLEAR_ADD = clearAdd
CLEAR_DIV = clearDiv
CLEAR_MUL = clearMul
CLEAR_SUB = clearSub
CLEAR_TARGET = clearMain

all: $(CREATE_ADD) $(CREATE_DIV) $(CREATE_MUL) $(CREATE_SUB) \
	 $(CREATE_TARGET)
clean: $(CLEAR_ADD) $(CLEAR_DIV) $(CLEAR_MUL) $(CLEAR_SUB) \
	 $(CLEAR_TARGET)

# 动态库创建过程
$(CREATE_ADD):
	$(MAKE) -C add/
$(CREATE_DIV):
	$(MAKE) -C divide/
$(CREATE_MUL):
	$(MAKE) -C multiply/
$(CREATE_SUB):
	$(MAKE) -C subtract/
	
# 动态库清理过程
$(CLEAR_ADD):
	$(MAKE) clean -C add/
$(CLEAR_DIV):
	$(MAKE) clean -C divide/
$(CLEAR_MUL):
	$(MAKE) clean -C multiply/
$(CLEAR_SUB):
	$(MAKE) clean -C subtract/

# 主程序创建过程
$(CREATE_TARGET):$(OBJS)
	$(CXX) $^ -o $@ $(LIB_PATH) $(LIBS)
$(OBJS):%.o:%.cpp
	$(CXX) $(CFLAGS) $(HEADER_PATH) $< -o $@ 

# 主程序清理过程
$(CLEAR_TARGET):
	$(RM) $(CREATE_TARGET) $(OBJS)