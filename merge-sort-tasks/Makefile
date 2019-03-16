CC=gcc
MPICC=mpicc
UPC=gupc
OFLAGS=-O3 -g
WFLAGS=-Wall -Werror
LDFLAGS=-lm
CFLAGS=$(OFLAGS) $(WFLAGS)
MPIFLAGS=
OMPFLAGS=-fopenmp
UPCFLAGS=

SRC :=	omp_mergesort.c


ALL :=  $(foreach src,$(SRC),$(subst .upc,,$(subst .c,,$(src))))

default: $(ALL)

tags: $(SRC)
	ctags $^

get_time.o: get_time.c
	$(CC) $(CFLAGS) -c $^ -o $@

omp_mergesort: omp_mergesort.c get_time.o
	$(CC) $(CFLAGS) $(OMPFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	@- rm -f get_time.o
	@- rm -f $(ALL) tags
