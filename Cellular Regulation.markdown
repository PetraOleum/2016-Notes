# BMSC 339: Cellular Regulation

Notes for BMSC 339: Cellular Regulation, 2016, by Petra Lamborn, student ID 300280340. Course co-ordinator: Darren Day.

Timetable:

* Monday: 8-9, Hunter LT 220
* Tuesday: 1-2, Murphy LT 220
* Wednesday: 10-11, Hunter LT 220
* Friday: 10-11, Hunter LT 119

Key dates:

* First lecture: Monday 11 July
* Mid-trimester break: 22 August - 2 September
* In-term test 1: 5<sup>th</sup> September (10%)
* Labs: Mondays on weeks of 19 Sept - 10 Oct (10am to 5pm, 30%)
* In-term test 2: 7<sup>th</sup> October[^DoubleTest] (10%)
* Final exam: TBD (50%)

[^DoubleTest]: Note that this is the same day as, and probably directly after, the second BIOL 243 test.

Course objectives:

> A student who has passed this course will be able to describe (demonstrate) how: 

> 1. Proteins are targeted to different destinations within cells
> 2. Proteomics can be used to study cellular processes
> 3. The cell cycle and apoptosis are regulated
> 4. Signal transduction occurs within cells 
> 5. Able to conduct experiments and analyse data relevant to cell biologists
> 6. Work in small groups

Course requirements:

* An overall pass grade of 50%
* A mark of 45% or more in _each_ section, including exam sections, in-term tests, individual lab sections _etc_.

## Signal Transduction

### Introduction

Multiple methods, including:

* Phosphorylation
* Protein kinases A &amp; C
* Trimeric G-proteins
* MAP kinases
    * Mechanism of getting signals from surface of the cell to nucleus
* Tyrosine kinases
* Ca<sup>2+</sup> signalling
* Wnt signalling

We'll also talk about:

* Signalling domains
* Scaffolding and anchoring
* STATS transcription factors
* Nuclear receptors

We'll emphasise mechanisms, techniques, specificity, and consequences.

#### Regulating cellular activity

Regulation between cells:

* Small organic molecules
* Small inorganic molecules
* Peptides
* Extracellular vesicles

Regulation within cells:

* Second messengers
* Covalent modification
    * Phosphorylation
	* Often associated with on/off changes in activity, including by location changes, and recruiting other proteins (allowing binding)
	* Competing phosphatases and kinases allow rapid response
	* Serine, Threonine, Tyrosine
    * Prenylation
    * Fatty acids
    * Proteolysis (cutting up)
    * Glycosylation (sugars)
    * Adenylation (AMP)
* Cellular distribution

### Techniques for studying signal transduction

To detect phosphorylation in cellular systems or isolated proteins we can use immunological detection (antibodies&mdash;western blot), phosphoprotein stains, and labelled ATP or phosphate. Mass spectrometry will tell you protein abundance and phosphorylation state, but not the location of the protein in the tissue or cell.

If looking at protein in a rat brain:

* Take out brain
* Slice up
* Use primary antibody to attach to target protein
* Use secondary antibody to attach to primary antibody&mdash;fluorescently label
* Inspect with microscope to see location

#### Receptor experiment

> A new recreational drug named "Revellade" has recently become popular amongst young people. The drug induces feelings of euphoria and emotional empathy in users. Unfortunately long-term use has been associated with hallucinations and neurological damage. As director of a research laboratory you have received a small grant (approx NZ $100,000) to support your two PhD students to try and elucidate the signal transduction pathway whereby Revellade induces hight levels of dopamine and seretonin in the cerebral cortex of users. Preliminary data suggests Revellade acts through opiod and cannabinoid receptors, possibly causing calcium release or cAMP production. Describe the expiremental approach you plan to use to determine what protein kinases are activated and what their targets are. You have access to a mouse facility and a human neuronal cell line that expresses both opiod and cannabinoid receptors.

"There is never an answer to this kind of question in your notes." This is a common exam question, which people either do terribly or really well. Either do well&mdash;practise&mdash;or don't attempt. Make an answer to this question before Friday.

Homework: 50 words on how you measure the change in gene expression of the cannabinoid receptor in response to treatment with Revellade of cells grown in a petri dish.





#### Measuring RNA quantities

This is particularly important when measuring the level of _mRNA_, as a proxy for gene expression. We use conventional PCR (rather than the new digital PCR), specifically Quantitative RT-PCR.

We extract the RNA and convert to cDNA. To ensure that the primers for the PCR aren't amplifying off the original DNA, you use the splicing of introns&mdash;if you have the forward and reverse primers on different exons, you will get a different length of product depending on whether it is the original DNA or the cDNA. Alternately, if the individual primer crosses an exon boundary in the cDNA it will not be able to amplify off the DNA at all.

You measure how many cycles it takes for the amount of amplified template to cross a threshold, measured via fluorescence or some other proxy. The threshold is set as a certain number of standard deviations (about 10) over the measured fluorescence in the first ~5 cycles. The threshold needs to be low, however, because quickly the increase in product ceases to be exponential because of product inhibition.

You need a control of a housekeeping gene that (you assume) will not change in production from your treatment. If you instead tried to normalise due to e.g. tissue volume you risk bias from the age of the tissue, or from failing to get perfectly identical quality RNA from each sample. The &Delta;C between target and control tells you the relative amount of expression of the target gene. The &Delta; between treatment and control tells you the change from the treatment.

To tag, you can either use SIBR green, which intercolates into the DNA, or TAQMAN probes which suppress flouresnce until polymerase comes through.

## Footnotes
