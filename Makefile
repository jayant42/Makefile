# compiler: 
CC =	g++

# compiler flags:
CFLAGS  = -std=c++11 -g -Wall 

#Linking Flag
LFLAGS =	-Wall

INCLUDES =	-I C:/boost_1_59_0 -I C:/MinGW -I C:/boost_1_59_0/boost/graph
LIBS = 
# the build target executable:
TARGET = Lexicograph

$(TARGET):	main.o LexcoSorting.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o LexcoSorting.o

main.o:	main.cpp LexcoSorting.h
	$(CC) $(INCLUDES) $(CFLAGS) -o main.o -c main.cpp

LexcoSorting.o:	LexcoSorting.cpp LexcoSorting.h
	$(CC) $(INCLUDES) $(CFLAGS) -c LexcoSorting.cpp

clean:	
	$(RM) $(TARGET) *.o *~
