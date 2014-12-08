CC=g++
CFLAGS=-c -Wall -I $(INC)
LDFLAGS=
SRC = SRC/
INC = INC/
SOURCES=diagrammer.cpp
OBJECTS=${SOURCES:.cpp=.o}
EXECUTABLE=diagrammer

all: $(SRC)$(SOURCES) $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

%.o: $(SRC)%.cpp
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -f *.o $(EXECUTABLE)