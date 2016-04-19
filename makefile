all: genetics stats2a computability

genetics:
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

computability:
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

stats2a:
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
