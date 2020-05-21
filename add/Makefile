CROSS =
CC = $(CROSS)gcc 
CXX = $(CROSS)g++ --std=c++11
DEBUG = -g -O2
CFLAGS = $(DEBUG) -Wall -c
FPIC = -fpic
SHARE = -shared
RM = rm -rf 

TARGET = libaddlib.so
LIBPATH = ../lib/

SRCS = $(wildcard ./*.cpp)
OBJS = $(patsubst %.cpp, %.o, $(SRCS))
DEP = $(OBJS:%.o=%.d)
LIB = $(LIBPATH)$(TARGET)

$(LIB):$(OBJS)
	$(CXX) $^ $(SHARE) $(FPIC) -o $@
#   mv $(TARGET) $(LIBPATH)

$(OBJS):%.o : %.cpp
	$(CXX) $(FPIC) $(CFLAGS) $< -o $@ 

-include $(DEP)

clean:
	$(RM) $(LIB) $(OBJS)