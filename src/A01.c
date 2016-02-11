#include <stdio.h>

int main(void) {
	unsigned char a = 0b01101101;
	unsigned char b = 0b10010110;
	signed char c = 0b00101001;
	signed char d = 0b11100010;
	signed char e = 0b1100101111101010; /* Overflow? Should be int? */
	
	printf("5.\n\n");
	
	printf("a: %d\n", a);
	printf("b: %d\n", b);
	printf("c: %d\n", c);
	printf("d: %d\n", d);
	printf("e: %d\n", e);
	
	printf("\n6.\n\n");
	
	signed int a2 = 162;
	signed int b2 = 310;
	
	printf("a: %x\n", a2); /* Ha, the variable name and value are the same. */
	printf("b: %x\n", b2);
	
	printf("\n7.\n\n");
	
	signed char b3 = 0x00000100;
	signed char c3 = 0x10101101;
	signed char d3 = 0x11011011;
	signed char e3 = 0x00100011;
	signed char f3 = 0x01101000;
	
	printf("b: %d\n", b3);
	printf("c: %d\n", c3);
	printf("d: %d\n", d3);
	printf("e: %d\n", e3);
	printf("f: %d\n", f3);
	
	return 0;
}
