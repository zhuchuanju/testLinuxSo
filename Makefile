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

TARGET = testDemo

$(TARGET):$(OBJS)
	$(CXX) $^ -o $@ $(LIB_PATH) $(LIBS)

$(OBJS):%.o : %.cpp
	$(CXX) $(CFLAGS) $(HEADER_PATH) $< -o $@ 

clean:
	$(RM) $(TARGET) $(OBJS)