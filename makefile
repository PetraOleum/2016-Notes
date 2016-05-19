all: Advanced\ Genetics.azw3 Statistics\ 2a.azw3 Computability\ and\ Complexity.azw3

Advanced\ Genetics.azw3: Advanced\ Genetics.markdown
	ebook-convert "Advanced Genetics.markdown" \
	"Advanced Genetics.azw3" \
	--smarten-punctuation \
	--change-justification=justify \
	--enable-heuristics \
	--disable-dehyphenate \
	--authors="Petra Lamborn" \
	--author-sort="Lamborn, Petra" \
	--cover="geneticscover.png" \
	--language="en_nz" \
	--series="Petra's Notes" \
	--tags="notes,university,genetics,biology" \
	--title="Advanced Genetics" \
	--formatting-type=markdown \
	--markdown-extensions="fenced_code,footnotes,extra" \
	--pretty-print \
	--extra-css="enotes.css" \
	--duplicate-links-in-toc \
	--level1-toc="//h:h2" \
	--level2-toc="//h:h3" \
	--level3-toc="//h:h4" \
	--no-chapters-in-toc \
	--mobi-toc-at-start \
	--start-reading-at="//h:h1"
	python -m markdown -x extra -x toc "Advanced Genetics.markdown" -f "Advanced Genetics.html"

Computability\ and\ Complexity.azw3: Computability\ and\ Complexity.markdown
	ebook-convert "Computability and Complexity.markdown" \
	"Computability and Complexity.azw3" \
	--smarten-punctuation \
	--change-justification=justify \
	--enable-heuristics \
	--disable-dehyphenate \
	--authors="Petra Lamborn" \
	--author-sort="Lamborn, Petra" \
	--cover="computabilitycover.png" \
	--language="en_nz" \
	--series="Petra's Notes" \
	--tags="notes,university,computability,complexity,mathematics" \
	--title="Computability and Complexity" \
	--formatting-type=markdown \
	--markdown-extensions="fenced_code,footnotes,extra" \
	--pretty-print \
	--extra-css="enotes.css" \
	--duplicate-links-in-toc \
	--level1-toc="//h:h2" \
	--level2-toc="//h:h3" \
	--level3-toc="//h:h4" \
	--no-chapters-in-toc \
	--mobi-toc-at-start \
	--start-reading-at="//h:h1"
	python -m markdown -x extra -x toc "Computability and Complexity.markdown" -f "Computability and Complexity.html"

Statistics\ 2a.azw3: Statistics\ 2a.markdown
	ebook-convert "Statistics 2a.markdown" \
	"Statistics 2a.azw3" \
	--smarten-punctuation \
	--change-justification=justify \
	--enable-heuristics \
	--disable-dehyphenate \
	--authors="Petra Lamborn" \
	--author-sort="Lamborn, Petra" \
	--cover="stats2acover.png" \
	--language="en_nz" \
	--series="Petra's Notes" \
	--tags="notes,university,statistics" \
	--title="Statistics 2a" \
	--formatting-type=markdown \
	--markdown-extensions="fenced_code,footnotes,extra,tables,def_list" \
	--pretty-print \
	--extra-css="enotes.css" \
	--duplicate-links-in-toc \
	--level1-toc="//h:h2" \
	--level2-toc="//h:h3" \
	--level3-toc="//h:h4" \
	--no-chapters-in-toc \
	--mobi-toc-at-start \
	--start-reading-at="//h:h1"
	python -m markdown -x extra -x toc "Statistics 2a.markdown" -f "Statistics 2a.html"

clean:
	rm *.azw3
	rm *.html
