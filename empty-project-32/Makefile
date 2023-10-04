TARGET=c-main

CFLAGS += -m32 -g -std=c99
ASFLAGS += --32 -g 

all: $(TARGET)

%.o: %.asm
	as $(ASFLAGS) $< -o $@

clean:
	rm -rf $(TARGET) *.o

$(TARGET): asm-module.o c-main.c
	cc $(CFLAGS) asm-module.o c-main.c -o $(TARGET)

