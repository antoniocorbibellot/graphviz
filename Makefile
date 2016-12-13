
%.png : %.gv
	dot -Tpng $^ -o $@

all : $(patsubst %.gv, %.png, $(wildcard *.gv))

clean:
	rm -f *~ *.png

.PHONY: clean

