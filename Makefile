build:
	cd src && ecc template.bpf.c template.h

clean:
	cd src && rm *.json *.o
