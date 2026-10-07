ifndef PLANTUML
$(error PLANTUML is unset)
endif

SOURCES := $(wildcard *.puml)

all: $(SOURCES:.puml=.svg) $(SOURCES:.puml=.png)

%.svg: %.puml
	$(PLANTUML) $(PLANTUML_FLAGS) --svg -pipe < $< > $@

%.png: %.puml
	$(PLANTUML) $(PLANTUML_FLAGS) --png -pipe < $< > $@

clean:
	rm -f *.svg *.png

.PHONY: all clean
