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

Grow (in triplicate) the cells in petri dishes; treat one set with Revellade and one without. After appropriate growth period, extract RNA with trizole and reverse transcribe to cDNA. A pair of forward and reverse primers should be obtained such that they cross an exon boundary in some way, preferably within the sequence of the primer, to avoid amplifying the original DNA over the cDNA. A housekeeping gene is not needed to normalise for cells grown in petri dishes. Perform quantitative rt-PCR with the cDNA samples and the primers to find the &Delta; in the time to reach the threshold between treated and untreated cells. Fluorescence can be measured via SYBR green, which may lead to false positives from primer dimers, or taqman.

#### Measuring RNA quantities

This is particularly important when measuring the level of _mRNA_, as a proxy for gene expression. We use conventional PCR (rather than the new digital PCR), specifically Quantitative RT-PCR.

We extract the RNA and convert to cDNA. To ensure that the primers for the PCR aren't amplifying off the original DNA, you use the splicing of introns&mdash;if you have the forward and reverse primers on different exons, you will get a different length of product depending on whether it is the original DNA or the cDNA. Alternately, if the individual primer crosses an exon boundary in the cDNA it will not be able to amplify off the DNA at all.

You measure how many cycles it takes for the amount of amplified template to cross a threshold, measured via fluorescence or some other proxy. The threshold is set as a certain number of standard deviations (about 10) over the measured fluorescence in the first ~5 cycles. The threshold needs to be low, however, because quickly the increase in product ceases to be exponential because of product inhibition.

You need a control of a housekeeping gene that (you assume) will not change in production from your treatment. If you instead tried to normalise due to e.g. tissue volume you risk bias from the age of the tissue, or from failing to get perfectly identical quality RNA from each sample. The &Delta;C between target and control tells you the relative amount of expression of the target gene. The &Delta; between treatment and control tells you the change from the treatment.

To tag, you can either use SYBR green (cheap, easy, versatile), which intercalates into the DNA, or Taqman probes (high specificity and allows multiplexing[^taqmulti]) which suppress fluorescence until polymerase comes through. Taqman also allows even greater specificity because if a spurious product is created because the probe can be made to only bind to the real one. 

[^taqmulti]: Multiplexing means that you can do two PCRs into the same tube at the same time, such as both the housekeeping and target gene.

Taqman is only feasible, due to price, when doing the same assay again and again (e.g. diagnostic), and so SYBR green would be more useful in a research setting.

To control for degradation, amplify fragments of the same gene. If you get roughly the same result (never exactly the same) then the template is not much degraded, otherwise it has been.

When doing low-copy number PCR it is essential to prevent contamination, including from previous experiments. Clean rooms and positive pressure flows, along with switching lab coats, can be used to ensure that this doesn't happen.

#### Transparency and good practices in the qPCR literature

_Read papers on blackboard_: Controls, information required for experiment to be valid.

> To obtain consistent and biologically relevant qPCR measurements, researchers must complete a number of complex technical steps, adequately address a range of quality-control issues, use appropriate instrument settings to generate accurate amplification plots, and select the relevant statistical approach for analyzing their data. Finally, experimental details need to be reported in a transparent manner that permits replication of the experiment and quality assessment of the qPCR results.

It's argued that just because qPCR is conceptually simple does not mean that the expirement itself is simple. RT-qPCR, working with RNA, is particularly difficult.

Key parameters determining quality:

* RNA quality
    * Purity
    * Integrity
    * Inhibition
* Reverse transcription
    * RNA input amount
    * RT enzyme or kit
    * Priming method
* Polymerase and conditions
    * Taq polymerase and conditions
    * Primer concentration
    * Template amount
    * Primer and probe sequences
    * Efficiency and specificity
    * Cycling conditions and instrument
* Analysis
    * More than one reference gene
    * Reference gene validation

The multiple, validated reference gene thing seems important.

People citing the MIQE guidelines seem to follow them better, but not in all cases.

#### Normalisation of RT-PCR data

We could normalise to:

* Amount of tissue
    * Assumes that amount and quality of RNA extracted is the same
    * Can be problematic when one sample is older or younger
    * Differing developmental stages mean differing availability and ease of extraction of RNA
* Number of cells
    * Doable in a Petri dish
* To RNA content
    * Common
    * "Always going to add 1&mu;g of RNA into my experiment"
    * One preparation might be more degraded than another
* External standard
    * Relative to a _known amount_ of transcript
* House keeping gene
    * Normalise to rough amount of RNA _and_ quality
    * Assumption of constant housekeeping gene may not hold
    * Use multiple housekeeping genes
    * Check that the housekeeping genes do not change relative _to each other_

#### FISH

Fluorescent in-situ hybridisation&mdash;another way to detect RNA, particularly it's location within a tissue. Generally use RNA probes to target RNA, rather than DNA probes.

T7 RNA polymerase promotor recognises the polymerase protein, allowing the creation of a probe for that RNA sequence. Label UTP with a fluorophore, Biotin, or "dig". Antibodies that recognise Dig, and then antibodies that recognise those with fluorophores to produce an amplification cascade.

You need to get the annealing temperature just right so that the probe will bind with, and only with, the target sequence.

#### Western blot

Will do more of this with Lifeng. Use an antibody[^Crappyantibodies] specific to your protein. You have to grind it up, so you get no location data. It does allow both the abundance of protein but also post-translational modification. 

[^Crappyantibodies]: Note that large numbers of antibodies don't recognise the right proteins, so need to validate it. Is the protein reported the right size?

#### Immunohistochemistry

IHC. Visualising protein location on tissue sections on glass slides. Sometimes the slide may have frozen tissue, sometimes it can be formaldehyde preserved&mdash;some antibodies don't work in some conditions.

Example: Expression of PCNA shows proliferating cells.

#### Cell culture

Real animals &gt; Explanted tissues &gt; Cell culture, because cell culture cannot be expected to behave like real animals. However, expirements in cell culture can do more (ethically and practically) than animals. Explanted tissues provide a middle ground.

## Footnotes
