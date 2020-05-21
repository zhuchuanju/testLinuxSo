CROSS =
CC = $(CROSS)gcc 
CXX = $(CROSS)g++ --std=c++11
DEBUG = -g -O2
CFLAGS = $(DEBUG) -Wall -c
FPIC = -fpic
SHARE = -shared
RM = rm -rf 

#HEADER_PATH = -I./
LIBPATH = /home/zcj/winCode/mylib/
SRCS = $(wildcard ./*.cpp)
OBJS = $(patsubst %.cpp, %.o, $(SRCS))

TARGET = libaddlib.so

$(TARGET):$(OBJS)
	$(CXX) $^ $(SHARE) $(FPIC) -o $@
	mv $(TARGET) $(LIBPATH)

$(OBJS):%.o : %.cpp
	$(CXX) $(FPIC) $(CFLAGS) $< -o $@ 

clean:
	$(RM) $(LIBPATH)$(TARGET) $(OBJS)