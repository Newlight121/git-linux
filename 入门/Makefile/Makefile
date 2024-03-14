objects = main.o input.o calcu.o
main: $(objects)
	gcc -o main $(objects)

%.o:%.c
	gcc -c $<

clean:
	rm -f *.o main

.PHONY : clean

name = zzk
curname = $(name)
curname1 := $(name)
name = zff


print:

	@echo curname: $(curname)
	@echo name: $(name)
	


print1:

	@echo curname: $(curname1)
	@echo name: $(name)
	
	
