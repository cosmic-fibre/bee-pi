LIBSE_O = se.o
LIBSE_OBJECTS = $(addprefix repository/, $(LIBSE_O))
OBJECTS = $(LIBSE_O)
ifndef buildworld
  include ../mk/sham
  include ../mk/component
endif
