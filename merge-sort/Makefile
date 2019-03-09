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

SRC :=	hybrid_mergesort.c \
	mpi_mergesort.c \
	mpi_rma_mergesort.c \
	mpi_rma_nc_mergesort.c \
	omp_mergesort.c \
	serial_mergesort.c


ALL :=  $(foreach src,$(SRC),$(subst .upc,,$(subst .c,,$(src))))

default: $(ALL)

tags: $(SRC)
	ctags $^

get_time.o: get_time.c
	$(CC) $(CFLAGS) -c $^ -o $@

hybrid_mergesort: hybrid_mergesort.c get_time.o
	$(MPICC) -cc=$(CC) $(CFLAGS) $(MPIFLAGS) $(OMPFLAGS) $^ -o $@ $(LDFLAGS)

mpi_mergesort: mpi_mergesort.c get_time.o
	$(MPICC) -cc=$(CC) $(CFLAGS) $(MPIFLAGS) $^ -o $@ $(LDFLAGS)

mpi_rma_mergesort: mpi_rma_mergesort.c get_time.o
	$(MPICC) -cc=$(CC) $(CFLAGS) $(MPIFLAGS) $^ -o $@ $(LDFLAGS)

mpi_rma_nc_mergesort: mpi_rma_nc_mergesort.c get_time.o
	$(MPICC) -cc=$(CC) $(CFLAGS) $(MPIFLAGS) $^ -o $@ $(LDFLAGS)

omp_mergesort: omp_mergesort.c get_time.o
	$(CC) $(CFLAGS) $(OMPFLAGS) $^ -o $@ $(LDFLAGS)

serial_mergesort: serial_mergesort.c get_time.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)


clean:
	@- rm -f get_time.o
	@- rm -f $(ALL) tags
