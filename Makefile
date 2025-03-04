#Define C compiler to run
CC=gcc

#Define compile-time flags
CFLAGS=-Wall -g

.PHONY: all clean

all: SJF_inital RR_inital

#Compile sjf
SJF_inital: SJF_inital.o
	$(CC) $(CFLAGS) -o SJF_inital SJF_inital.o

SJF_inital.o: SJF_inital.c
	$(CC) $(CFLAGS) -c SJF_inital.c -o SJF_inital.o

#Compile RR
RR_inital: RR_inital.o
	$(CC) $(CFLAGS) -o RR_inital RR_inital.o

RR_inital.o: RR_inital.c
	$(CC) $(CFLAGS) -c RR_inital.c -o RR_inital.o

clean:
	rm -f SJF_inital RR_inital *.o