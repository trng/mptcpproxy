PROG=mptcproxy
SCRIPT_before=SCRIPT_before
CFLAGS=-Wall



all: $(SCRIPT_before) $(PROG)

$(SCRIPT_before):
	./build_verison_increment.sh

$(PROG): $(PROG).o
	$(CC) -o $(PROG) $(PROG).o

$(PROG).static: $(PROG).o
	$(CC) -static -o ${@} $(PROG).o
	strip $@

clean:
	rm -f $(PROG)
	rm -f $(PROG).o
	rm -f $(PROG).core
