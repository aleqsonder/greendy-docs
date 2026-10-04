ifndef PLANTUML
$(error PLANTUML is unset)
endif

%.svg: %.puml
	$(PLANTUML) $(PLANTUML_FLAGS) --svg -pipe < $< > $@

%.png: %.puml
	$(PLANTUML) $(PLANTUML_FLAGS) --png -pipe < $< > $@

clean:
	rm -f *.svg *.png
