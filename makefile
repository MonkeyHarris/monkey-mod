FLAGS=-m32 -O2 -ffast-math -fPIC -shared -ffunction-sections -fdata-sections -Wl,--gc-sections

gamei386.so: *.c *.h navlib/*.o makefile
	$(CC) $(FLAGS) *.c navlib/*.o -o $@
	
clean:
	rm -f gamei386.so
