# -------------------------------------------------------------------
# file: Makefile
# type: Make file for Fortran project
# project: helloFortran
# -------------------------------------------------------------------

HELLO_F    := hello.f
HELLO_EXE  := hello

FC         := gfortran
FOPTIONS   := -ffree-form
RM         := rm -fR

# default target
.PHONY: all
all: app


# build hello executable
.PHONY: app
app: $(HELLO_EXE)
$(HELLO_EXE): $(HELLO_F)
	$(FC) $(FOPTIONS) -o $@ $<


# clean
.PHONY: clean
clean:
	$(RM) $(HELLO_EXE)

