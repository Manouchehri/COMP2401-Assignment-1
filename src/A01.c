#include <stdio.h>

int main(void) {
	unsigned char a = 0b01101101;
	unsigned char b = 0b10010110;
	signed char c = 0b00101001;
	signed char d = 0b11100010;
	signed char e = 0b1100101111101010; /* Overflow? Should be int? */
	
	printf("a: %d\n", a);
	printf("b: %d\n", b);
	printf("c: %d\n", c);
	printf("d: %d\n", d);
	printf("e: %d\n", e);
	
	// 0110 1101 a
	// 1001 0110 b
	// 0010 1001 c
	// 1110 0010 d
	// 1100 1011 1110 1010 e
	printf("Hello.\n");
	return 0;
}
