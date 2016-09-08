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
* In-term test 2: 7<sup>th</sup> October[^DoubleTest] (10%, weeks 6 &mdash; 11)
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

**Homework**: 50 words on how you measure the change in gene expression of the cannabinoid receptor in response to treatment with Revellade of cells grown in a petri dish.

Grow (in triplicate) the cells in petri dishes; treat one set with Revellade and one without. After appropriate growth period, extract RNA with trizole and reverse transcribe to cDNA. A pair of forward and reverse primers should be obtained such that they cross an exon boundary in some way, preferably within the sequence of the primer, to avoid amplifying the original DNA over the cDNA. A housekeeping gene is not needed to normalise for cells grown in petri dishes. Perform quantitative rt-PCR with the cDNA samples and the primers to find the &Delta; in the time to reach the threshold between treated and untreated cells. Fluorescence can be measured via SYBR green, which may lead to false positives from primer dimers, or taqman.

**Homework**: THC is an agonist to the cannabinoid receptor. How would you measure cannabinoid expression changes from treatment by THC?

Treat a group of rats with THC, and a control group without. Select some housekeeping genes that you expect to have constant gene expression regardless of the presence or absense of THC. Extract RNA from treated and untreated rats with trizole and reverse transcribe to cDNA. Select primers that cross exon boundaries to avoid amplifying the original DNA and run RT-PCR to compare cannabinoid gene expression to the housekeeping genes; verify that the houskeeping genes have constant gene expression.

Similarly, extract proteins from the brains of the rats and run a Western Blot to compare protein abundance in treated and untreated rats. Also use IHC to find locations?

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

In Western blotting you run the protein sample in a gel, then transfer it to a membrane, wash the membrane off, and then detect using fluorescent antibodies. Western blotting is quantitative, not so much qualitative.

#### Immunohistochemistry

IHC. Visualising protein location on tissue sections on glass slides. Sometimes the slide may have frozen tissue, sometimes it can be formaldehyde preserved&mdash;some antibodies don't work in some conditions. IHC can show protein distribution within a cell, e.g.

Example: Expression of PCNA shows proliferating cells. 

This is qualitative, not quantitative.

#### Cell culture

Real animals &gt; Explanted tissues &gt; Cell culture, because cell culture cannot be expected to behave like real animals. However, expirements in cell culture can do more (ethically and practically) than animals. Explanted tissues provide a middle ground.

#### Cell type specific marks for identification

Different cell types express a unique subset of surface markers/cytosolic proteins. IF/IHC staining with a panel of markers you can identify cell types in tissues.

For example, markers in endothelial cells from less mature to more mature: CD133, CD34, CD31, vWF.

Individual cells can be looked at via cell cytometry, particularly useful in the following:

#### Measuring proliferation

BRDU is a nucleotide analogue that gets incorporated into replicating DNA, so can be used to detect replicating cells. This only marks cells using S phase. Stains green. Phosphohistidine H3 (pH3) stains red, and stains only during M phase. This can be used to show that Morphine slows the cell cycle relative to saline.

PCNA can also be used as a marker, but also picks up cells that have _recently_ proliferated; not very specific.

The gold standard for cell proliferation detective in vitro is, of course, counting the cells. Alternatively to counting directly, there is the MTT assay which involves a chemical that turns blue as cells respire&mdash;however this is indirect, and so if the treatment changes respiration rate this becomes problematic.

#### Measuring cell death

* Comet assay: measure DNA fragmentation pattern and amount. When apoptosis occurs you get a comet trail of small DNA fragments; in your control you get a relativly chohesive band with no comet. Not quantitative
* TUNEL assay: "terminal doxynuclotidyl transferase dUTP end labelling." When DNA is fragmented you get lots of free ends, and terminal transferase adds nucleotides to the end of strands. Therefore you can use this to add fluorescent markers to ends of fragments and cause their cells to fluoresce. Good in tissues.
* Annexin-V: Binds phosphatidyl serine, which is located on the cytosolic side of plasma membrane&mdash;therefore normally wont stain cell, but when apoptosis occurs the membrane flips and Annexin-V can bind.
* PI: Propridium Iodide, a red fluoro dye (and a "vital stain"). Living cells will exclude most dyes, pumping it out, but when they die and lose their membrane potential vital stains can flow in and stain the cell. The deader the cell the stronger the stain. (PI can also be used as a cell cycle marker because it intercolates into DNA). Good for flow cytometry.

### cAMP

A ligand binds to a protein on the cell surface, which produces a second messenger. The second messanger produces a protein kinase cascade, e.g. mapKinase or protein kinase A. This then causes transcription factor phosphorylation, which then causes a change in mRNA production. The amount of second messenger is very localised.

Protein kinase A is activated by cAMP, and is well understood. Not going to look at molecular mechanism this year. The crystal structure has been solved.

cAMP is a second messenger

* Synthesised from ATP on demand
* Adenylate cyclase takes ATP&rarr;cAMP
* Phosphodiesterase takes cAMP&rarr;AMP

The entire protein kinase A family is activated by cAMP. Phosphorylates Ser/Thr OH in target proteins. The consensus target sequence is Arg-Arg-X-Ser. The inhibitor peptide sequence is Arg-Arg-X-Ala.

Protein sequencing of PKA itself shows conserved motifs, particularly the glycine triad which binds ATP.

A cAMP dependent protein kinase mediates the effects of the second messenger cAMP. It is a tetrameric protein containing two regulatory subunits "R" and two catalytic subunits "C". When it is active it exists as an R<sub>2</sub> dimer and two free C subunits.

Each regulatory subunit binds two molecules of cAMP cooperatively. Free catalytic subunits have protein kinase activity, but instead bind to inhibitor motifs on the regulatory subunit; binding of cAMP frees the catalytic subunits.

### G-protein systems

A plasma-membrane receptor; a trimeric g-protein. The effector molecule generates second messenger. Their function is to act as a signal amplification cascade after ligand binding.

G-protein coupled receptros are a single polypepetide chain that has seven transmembrane segments. They have an external ligand binding domain, while the transmembrane loops form the G-protein binding site. They are generally shown in textbooks as monomers, but this is not true.

Continual activation leads to the phosphorylation or internalisation of the receptor, which causes more and more ligands needing to be bound to trigger the same level of response.

Trimeric G-proteins are composed of three different polypeptides (&alpha;, &beta;, and &gamma;). Dissasociates into &alpha; and &beta;&gamma; when activated. G&alpha; activates effector protein, and has GTPase activity. &beta;&gamma; anchors &alpha; to plasma membrane, though is also involved in cell signalling.

Ligand binds 7-TMS &rarr; Conformational change in G-protein receptor &rarr; G-protein attached to receptor activated &rarr; G-protein _swaps_ GDP for GTP &rarr; binding causes dissasociation &rarr; G&alpha; hydrolyses GTP to GDP.

The lifetime of active &alpha; is short&mdash;the binding to the effector protein stimulates intrinsic GTPase activity. This allows rapid changes in cAMP concentration. There are more g-proteins than receptors; one receptor can activate multiple. The g-protein remains active after dissasociation, and is only deactivated when the GTP is hydrolysed to GDP.

#### Types of G-protein

Different types of G-protein may either activate _or inhibit_ Adenylate cyclase. Different cells produce different patterns of receptors and g-proteins. While all G-proteins have the same basic mechanism they may work with different receptors and effect different proteins. G-proteins can activate Ca<sup>2+</sup> channels and K<sup>+</sup> channels, or activate other proteins.

| Family | Member | &alpha; subunits | Toxin effect |
|:------ |:------ |:---------------- |:------------ |
| Fill | Out | Late | r |

#### Cholera toxin

A toxin produced by V. cholerae, ADP-ribroylation(?), inhibits GTP-ase activity. This can be used to work out which receptors and g-proteins are present in a cell. It causes proteins that are activated to not become deactivated and therefore continually be activated. Normally, in the intestine, this causes cAMP to build up and Chlorine channels to remain open and water(?) to flow out.

### Phosphatidylinositol

"PI" is a minor lipid on inner face of membrane

* PI: Phosphatidylinositol
* PIP: PI-phosphate
* PIP2: PI-bisphosphate

Basically, it's a lipid that can be phosphorylated, multiple times, to produce different signal molecules. There are a varity of different positions that can be phosphorylated, all producing different molecules.

Phospholipases can cleave PI. PLA<sub>1</sub> and <sub>2</sub> cut off fatty acids from the glycerol, PLC cleaves the diacyl glycerol from the P and headgroup. PLD cleaves the P and glycerol from the headgroup. PLB does the functions of both PLAs. Cleaving the head from the lipid creates a signalling molecule that can now diffuse into the cytosol.

Phospholpase effects:

* PLA2: Inflammatory response
* PLC: Activates protein kinase C via DAG
* PLD: poroduces phosphatidic acid that mobilises calcium, inhibits AC, activates PLC

#### Gq signalling activates PLC

* Ligand binds to GPCR
* Activation of Gq
* &alpha;Gq-GTP activates phospholipase C &beta;
* PLC cleaves PIP2 to inositol tripohosmphate (IPC) and diacyl glycerol (DAG)

DAG and IP3 are important signalling molecules

#### IP3 and calcium relases

IP3 is small and water soluble, so can diffuse from plasma membrane and find calcium stores(?). IP3-gated Ca<sup>2+</sup> release channels in the ER open in response to IP3 binding. The channels are regulated by positive feedback from Ca<sup>2+</sup> binding&mdash;Ca<sup>2+</sup> binding to the channels causes Ca<sup>2+</sup> release ( **Calcium induced calcium release** ).

IP3 is rapidly dephosphorylated by specific phosphatases, while Ca<sup>2+</sup> entering the cytosol is rapidly pumped out of the cell and into ER and calciosomes. Some IP3 is also phosphorylated into IP4, which is also a signalling molecule in it's own right (stimulating pumping back into storage). The calcium relases thus stimulates it's own termination, forming a cycle.

#### Calcium induced calcium release

Ca<sup>2+</sup> entering the cytoplasm comes from two sources: the extracellular environment and parts of the ER that are associated with the plasma membrane. The ER is a closed system, storing only a limited amount of calcium ions. These stores would deplete very quickly, but their release stimulates the ingress of calcium from outside the cell. Calcium release is therefore a two-step process.

First, IP3 binds to receptors on ER and opens Ca<sup>2+</sup> channels. Released Ca<sup>2+</sup> binds to ER IP3-receptor complex, inducing a conformational change as ER Ca<sup>2+</sup> empties. This conformational change opens adjacent Ca<sup>2+</sup> channels _on the plasma membrane_. Plasma membrane channels allow extracellular Ca<sup>2+</sup> to enter. IP4 may help keep plasma membrane Ca<sup>2+</sup> channels open.

#### Regulation of cellular calcium

Free Ca<sup>2+</sup> is kept very low and is tightly regulated (10-7 M), while the concentration of Ca<sup>2+</sup> is extracellular fluiid and ER is high (10-3 M). Ca<sup>2+</sup> pumps keep calcium concentration low, including Ca<sup>2+</sup>-ATPase in the plastma membrane. Muscle and nerve cells also have Na<sup>+</sup>/Ca<sup>2+</sup> antiport which exchanges sodium and calcium ions. Antiport has low affinity for Ca<sup>2+</sup> and operates after cytosolic Ca<sup>2+</sup> rises. Failing to maintain calcium homeostasis causes Ca<sup>2+</sup> leakage from mitochondria, which triggers apoptosis.

Calcium is released and stored in cycles, and both the frequency and amplitude code information. Ligands can influence amplitude _or_ frequency.

#### PKC

PKC is a very good example of a kinase regulated by intra-molecular interactions, interacting with a psuedosubstrate domain within the protein itself. It's a small peptide, inactive in the cytoplasm when Ca<sup>2+</sup> low and in the absense of DAG&mdash;the psudosubstrate domain occupies the substrate binding domain. A rise in Ca<sup>2+</sup> causes increased association with the plasma membrane, while the psuedosubstrate domain binds DAG and thereby frees the kinase domain.

### Calmodulin

Calmodulin is an intracellular calcium level detector. It's highly conserved and ubiquitous in mammalian cells. It's small (150 amino acids), and its crystal structure is solved. It has a high affinity for calcium, and has two binding domains on each end of a "dumbell" shape. Calmodulin regulates the acitivy of a large variety of proteins including protein kinases, phosphodiesterase, Ca<sup>2+</sup>-ATPase.

The Ca<sup>2+</sup>/calmodulin complex binds to target proteins with pico- to nano-molar affinity. The target proteins are highly variable in sequence by all contain a "basic[^BasicHelix] amphipathic[^amphipathic] alpha helix" (Baa). The Baa structure itself is regcognised, _not_ the precise sequence. This is simlar to tyrosine kinases.

Calmodulin is "allosterically regulated" by calcium. Calmodulin has no intrinsic enzyme activity, but regulates the protein it binds to. Most important effects are mediated by Ca<sup>2+</sup>/calmodulin dependent protein kinases.

[^BasicHelix]: That is "not acidic," alkaline, positively charged. E.g. arganine, histine, lysine

[^amphipathic]: Both hydrophilic and hydrophobic.

Between the dumbells of calmodulin is an alpha helix, but it's not a Baa helix. The helix folds the calclium/calmodulin complex around the target structure.

#### CaM kinases

CaM kinases phosphorylate Ser and Thr in response to increased cellular calcium.

CaM kinase II is a multifunctional kinase that is abundant in all animal cells, present in large amounts in brain symapses and the brain isoform is well characterise. It is involved in catacholamine metabolism (dopamine, adrenaline, etc). It has a role in neurogenesis from intelleclual stimulation. Activation of neurons causes a Ca<sup>2+</sup> influx through voltage-gated calcium channels. The influx activates CaM kinase II to phosphorylate and activate tyrosine hydroxylase, and by this mechanism Ca<sup>2+</sup> influx causes both neurotransmitter secretion and synthesis.

CaM kinase II is a complex of 12 subunits, of four types, however in the brain only the &alpha; subunit is expressed:

* It has a catalytic domain and an inhibitory domain
* The inhibitory domain is next to a Baa domain
* When calmodulin binds the kinase is activated
* It becomes fully activated once it self-phosphorylates its inhibitory domain, and dissasociates the catalytic domain from the inhibitory domain
* In its fully activated firnm it has Ca<sup>2+</sup>-calmodulin binded, + phosphorylation
* After Ca<sup>2+</sup> level decreases and calmodulin disassociates, it remains 50-80% active until a phosphatase dephosphorylates the inhibitory domain

#### cAMP and calcium pathways

Intracellular signalling pathways interact at several levels. In this case, some isoforms of adenylate cyclase and phosphodiesterase are regulated via Ca<sup>2+</sup> and calmodulin complexes. PKA can phosphorylate Ca<sup>2+</sup> gated ion channels and Ca<sup>2+</sup> pumps. The IP3 receptor is phosphorylated by PKA modulating its activity.

### Receptor Tyrosine Kinase

RTKs are a type of cell surface receptors.

RTKs are integral membrane proteins, with a single transmembrane helix. When activated they phosphorylate and recruit proteins. Non-receptor tyrosine kinases are not transmembrane, but associated with cytoplasmic face. They are recruited to activated receptors and phorphorylate and recruit proteins. The main theme is that they create conglomerations of proteins at the membrane.

The specific amino acid phosphorylated is important, and the other proteins are recruited because they recognise the phosphorylated domain. A chain of proteins develops at the membrane, e.g. RTK<sup>P</sup> &rarr; Adaptor &rarr; Ras &rarr; Raf. This can then trigger e.g. MAP kinases, but generally requires a second trigger for growth.

The first RTK discovered was the EGF (epidermal growth factor) receptor. The ligands tend to be small peptides. May growth factor receptors are protein tyrosine kinases:

* Epidermal growth factor (EGF)
* Vascular endothelial growth factor (VEGF)
* Insulin
* Insulin like growth factor-1

#### Three classes of RTK:

1. The first class includes EGF, and has a tyrosine kinase domain on the cytoplasm side and two cytosine rich domains on the extracellular side. Their extracellular domains are glycosylated. They have a single transmembrane alpha helix.
2. The second class inludes insulin and IGF-1, which is postranslationally modified peptides cut in half and then joined together, and then two of these linked together. There are two CRD and two TKD. "&alpha;2&beta;2 tetramer."
3. The third class has an immunoglobin-like domains on the extracellular side, and one tyrosine kinase domain on the cytoplasm side. The TKD is potentially split by a kinase insert region. Immunoglobin-like domains are variable in number, but there is a single transmembrane helix and a single kinase domain. The insert region contains regulatory sequence that can be phosphorylated.

#### Mechanism of activation

_"Hormone induced dimerisation"_

Hormone binding the extracellular domain can cause two adjacent RTKs to come together, though in the case of class II they are already together. The dimersiation of the RTKs causes autophosphorylation of the kinase domains. In class III the ligands themselves are often dimers, binding two RTKs simultaneously. RTKs are often localised to lipid rafts, meaning that the required proteins are already near each other.

#### RTKs activate Ras

RTK activation leads to the activation of Ras via a continous chain of adaptor proteins. Active Ras signals to the nucleus via mitogen activate protein kinase (MAPK) pathways. The first part of the MAPK pathway is Raf, "map kinase kinase kinase(?)"

The adaptor proteins are a _continous chain of protein interactions_ and form _signalling networks and complexes_. The proteins involved depend on the cellular proteome&mdash;there are many different routes to Ras activation.

Grb and GNRP such as Sos interact via SH3 domains. GNRP activate Ras by stimulating the exchange of GDP for GTP&mdash;Ras is a monomeric G-protein. Ras signalling is terminated by spontaneous GTP hyrolysis to GDP.

Ras is a monomeric GTPase similar to the &alpha; subunit of trimeric GTPases, relaying long-lasting growth signals to the nucleus via MAP kinases. The intrinsic GTPase activity is much less than trimeric G-proteins (~100 slower than activated G&alpha;)

#### EGFR signalling

_An example_

Autophosphorylation of dimerised EGFR recruits adapter proteins to pY (phosphotyrosine). The proteins recruited to pY in a sequence specific manner via SH2 domains. Grb2 SH2 binds peptide motifs matching the consensus `pTry-X-Asn-X`. Gbr2 then recruits a guanine nucleotide releasing protein (GNRP).

#### RTK signal amplification

Ligand binding causes autophosphorylation, and active RTK phosphorylates kinase domain of neighbouring RTKs. The RTK remains active even after disassociation of ligand due to phosphoyraltion of internal Tyr.

The signalling is terminated by dephosphorylation by phosphatases. RTK can be inactivated by phosphorylation of internal sites, e.g. by PKC, PKA, and CaM kinases, providing a link between second messenger and RTK signalling.

### MAP Kinase

MAPK means Mitogen Activated Protein Kinases. The MAPK cascade links activation of plasma membrane receptors to phosphorylation of transcription factors. MAP kinases are ERKs, or extracellular signal regulated kinases. Ras activation is short-lived, but signals to differentiate/proliferate require longer-lasting signalling to nucleus. Ras activates a cascade to nucleus.

Raf is the first kinase, "Map kinase-kinase-kinase," and is the crossroads of RTK and GPCR. Full activation of RAF requires it to be phosphorylated and interact with Ras-GTP.

The next is Mek, "Map kinase-kinase," which phosphorylates both Ser/Thr and Tyr.

One MAP-kinase is Erk, which needs to be dual-phosphorylated. It targets transcription factors e.g. Fos, Jun, AFT2, Elk.

### Ras superfamily of GTPases

Small monomeric GTPase similar to the &alpha; subunit of trimeric G-proteins. The superfamilty is divided into five main families: Ras, Rho, Ran, Rab, and Arf.

#### Ras

Cell proliferation. Contains Ras, Rap, Rheb, and Rad. Humans have three Ras genes (HRas, KRas, NRas), which are the most common onocogenes in human cancers. Ras inhibitors studied for treatment of cancer, but hard to just knock out as essential.

Rap are small GTPase similar to Ras, but which inhibits Ras. Rheb activates mTOC1 regulating protein synthesis and cell growth in the brain.

**Note: Some missing notes around here; come back to this**.

### Non-receptor tyrosine kinases

_Read papers: WW and SH3 domains; SH2 and PTB domains_.

The first discovered non-receptor TK discovered was a viral transforming protein. Oncogenic viral protein could transform animal cells into cancerous state: "v-src," versus "c-src". The viral form is constitutively active, meaning that it has prolonged activation (hence driving cell into cancerous state). The gene is mammalian, though the virus infects birds (I think?). Carrying a signal-transduction pathway gene means that the virus can cause the cell they infect to replicate allowing them to hijack the machinery.

#### Src family kinases (SFKs)

They are all membrane associated via amino-terminus: they are attached to lipids via myristic acid, plamitic acid&mdash;electrostatic interactions due to basic amino acids. They have a unique domain in this positive region, phosphorylated at Ser17. They are often found in lipid rafts.

N-terminus &harr; Unique/+++ domain &harr; SH3 domain &harr; SH2 domain &harr; kinase linker &harr; tyrosine kinase (SH1)

The kinase domain has a regulatory tyrosine which needs to be phosphorylated to be active. In the active state 416 is phosphorylated; 527 is dephosphorylated.

SH2 domains bind phosphotyrosines in a sequence specific manner; SH3 domains bind proline-rich sequences in a specific manner. Proteins are recruited to pTyr on activated receptors via SH2 domains. Intracellular sequencing proteins have SH2 and SH3 domains. Many different signalling proteins bind pTyr on activated receptors. Found on GAPS, adaptor proteins, PLC, Src like NRTK&mdash;all have different structures yet have domains.

In vivo SH2 containing proteins bind pTyr on activated receptors and cytoplasmic pTyr phosphoproteins, but have no affinity for non-phosphorylated targets. SH2 bind optimal sequence 1000-fold higher than random phosphopeptide.

Different proteins have different patterns of SH2 and SH3 domains, further, any given receptor has different phosphotyrosines. The pattern of phosphorylated tyrosines determines which protein binds.

The Src SH2 domain selects the peptide `pTyr Glu Glu Ile`. SH2 binding sites are bipartite; pTyr is recognised by one region and the surrounding amino acids by the other. Src has an invariant Arg which binds pTyr via hydrogen bonds; the other binding region is more variable and recognises amino acids to the C-terminal direction of pTyr.

Src contact residues:

* hydrophobic
* hydrophillic
* small hydrophobic

SH3 domains bind proline rich sequences. Proline peptides must adopt left-hand PPII type hilix; each turn has three amino acids. The sequence is less important than the fold that the sequence creates. The SH3 hydrophobic pocket has conserved aromatic amino acids.

### PI-3-Kinase signalling

PI-3-Kinase has diverse cellular functions, and is involved in P12K/Akt/mTOR pathway and insulin signalling pathway. Signals survival, proliferation, differentiation, protein synthesis, motility, and intracellular trafficking. Activated by RTKs, 7-TMRs, cytokine receptors, integrin receptors.

PI 3-kinase promotes PIP3 formation (a lipid), not to be confused with IP3 (which is water-soluble). There are three major classes:

Class 1 is activated by G protein coupled receptors and RTKs. 

Heterodimeric containing a regulatory (containing SH2 and SH3 domains) subuinit and catalytic subunit. Contains pleckstrin homology domain involved in lipid binding, as is located at membrane (helps keep it there).

PI&rarr;PI(4)P&rarr;PI(4,5)P<sub>2</sub>&rarr;IP<sub>3</sub>, but before that last step can instead by catalysed by PI3K to sugars phosphorylated at different sites: PI(3)P; PI(3,4)P<sub>2</sub>, PI(3,4,5)P<sub>3</sub>. Last of those can be dephosphorylated by PTEN back to second-to-last (noted oncogene).

Activation of a RTK by binding of a pro-survival ligand induces pY formation. PI3K is recruited via its SH2 domain. PI3K catalyses the conversion of PIP2 to PIP3. Proteins with phosphoatidylinositol binding domains are recruited to plasma membrane. Akt and PDK1 bind PIP3 and PIP2 via PH domains upon PI3K activation. Creates signal conduction cascade.

#### PTEN

PTEN is an important negative regulator of PI3K/Akt signalling. Is a phosphatase of phosphoinositide substrates, and also has weak _protein_ phosphatase activity e.g. on IRS1 and Dishevelled. Crucial role as tumour suppressor.

#### Akt

_Survival and growth signal_

Upon translocation of Akt and PDK1 to plasma membrane PDK1 activates Akt. Akt is phosphorylated on Thr208 leading to parital activation. Phos of Ser473 by mTORC2 complex causes full activation. Akt dissociates from the membrane to phosphorylate target proteins (but can leave when not phosphorylated a second time).

#### PI3K/Akt/mTOR pathway

Important for regulating cell cycle. mTOR is serine/theonine protein kinase. It exists in two functionally distinct complexes: mTORC1 and mTORC2. One is rapomycin senstive, the other is "insensitive" i.e. less senstive.

mTORC1 contains the protein Raptor and others. It functions as a nutreint/energy sensor that regulates protein synthesis. Promotes ribosome synthesis, inhibits protein degradation and stimulates protein synthesis. Downstream effects on protein synthesis are reguated by active Akt acting on TSC1/TSC2 protein complex. TSC2 is a GTPase activating protein (GAP); phosphorylating it inhibits its activity. TSC2 interacts with the monomeric G-protein Rheb (from the Ras family) inactivation. Rheb-GTP activates mTORC1. (Akt is activated by mTORC2).

Phosphorylation of TSC1/TSC2 complex causes it to fall apart, losing its GAP activity, though phosphorylating _other_ parts of it can stimulate GTPase activity.

### Scaffholding and Anchoring

Many signalling enzyme are widely distributed and often have a broad substrate selectivity; targeting of kinases and phosphatase close to their substrates is crucial to ensure tight regulation.

Localisation allows restriction of second messengers to downstream enzyme and optimal access to activators and substrates. When you get e.g. calcium release or cAMP you get only a localised area.

There are two main mechanisms:

1. Recruit active signalling molecules into multiprotein signalling networks
2. Activation of dormant enzymes already positioned close to their substrates

#### RTKs and cytoplasmic proteins

The protein that gets recruited depends on which tyrosine as phosphorylated and the specificity of the SH2 and SH3 domains. Having both SH2 and SH3 domains means that a network can be established around the RTK. The sequence around the pTyr on the receptor is important in determining which SH2-containing targets can bind. One receptor can activate many different pathways depending on the pTyr.

Conversion of Tyr to Phe (a conservative, aromatic-to-aromatic change, with little structural change) on the Met receptor results in a null mutant&mdash;even though kinase domain is functional. Mutation of Asn at +2 to pTyr uncouples receptor from Grb2 altering cell phenotype.

#### Other binding domains

* PTB: pTyr-binding domains recognise residues that for a &beta; turn preceding pTyr: NPXpY. Specificity is from hydrophobic residues - 5-8 from pY.
* PDZ domains
* WW domains

#### Ser/Thr phosphate signalling networks

* Protein modules control the assembly of Ser- Thr kinase signalling networks
* PKA is activated by cAMP
* Gradients and compartmentilized pools of cAMP are formed by the action of adenylate cyclases and phosphodiesterases
* A-kinase anchoring proteins (AKAPs) hold the PKA holoenzyme at precise intracellular sites
    * Type RI subunits tend to be cytoplasmic while RII are mainly associated with cellular structures and organelles due to AKAP action
    * RII bind AKAPs with nanomolar affinities while RI with micromolar
    * AKAPs have two binding domains
        * An amphipathic a-helix that binds the RII dimer
        * A targeting region that tethers PKA-AKAP to specific subcellular structures
    * AKAP function has been studied by "anchoring inhibiting peptides"
    * AKAPs will bind multiple signalling enzymes as well as PKA eg AKAP79 tethers PKA,PKC & PP-2B (calcineurin) to post-synaptic densities in neurons
    * Anchoring by AKAPs may allow integration of signals from distinct second messengers (Ca<sup>2+</sup>, cAMP, DAG) to control specific phosphorylation events

#### PKC localisation

* Many different isoforms of PKC which are differentially localised
* Protein-protein interactions facilitate differential localisation
* Important protein include:
    * AKAPs A-kinase anchoring proteins
    * SBPs substrate binding proteins
    * RACKs receptors for activated C-kinase
    * PICKs proteins that interact with C-kinase
    * SBPs These bind active PKC in the presence of phosphytidylserine. They are phosphorylated and slowly release PKC
    * RACKs These are not substrates and usually bind away from the active site.  PKC is thought to remain active when bound to RACKs
    * PICKs Not much is known except they bind active C-kinase and some (PICK-1) has a PDZ domain

#### Scaffholding and MAP kinase cascades

* Scaffolding of MAP kinases was first described in yeast and more recently a mammalian parallels have been proposed
* The adapter protein MP1 binds MEK1 and ERK1 (only 2 of the 3 kinases)
* Other mammalian scaffolding proteins (JIP- 1) binds all 3 of the MAP kinases in the JNK pathway (MKK7, MLK1 and JNK)

### Wnt/&Beta;-catenin signalling

Regulates proliferation, fate specification, and differentiation in numerous developmental stages and adult tissue homeostasis.

#### The Wnt family

Wnt are secreted glycoproteins, which don't travel very far due to poor sulobility. They are Cys-rich proteins of 350-400 amino acids. The first identified was murine Wnt3a which contains a N-terminal signal peptide for secretion and is efficeintly secreted compared to other Wnts.

Wnt proteins can function as morphogens; they are speculated to function in both short and long range signalling, but lipidation limits their diffusion through the aqueous extracellular space&mdash;possible multimer formation may bury hydrophobic lipid modification facilitating long range signalling.

#### The Wnt receptors

Two receptor families critical for Wnt signalling:

* Frizzled (Fz) are seven-pass transmembrane receptors (type of G-protein)
* LDL receptor-related proteins 5 and 6 (LRP5 and LRP6).

Mammals have 10 Fz genes that vary in their ability to activate &Beta;-catenin. LRP6 function more in embryogenesis, while LRP5 is critical for adult bone homeostasis.

#### The canonical pathway

The canonical pathway is &Beta;-catenin dependent, as it uses that protein for signalling. &Beta;-catenin being phosphorylated marks it for destruction, and in the resting state it forms a complex with a variety of proteins which coordinate its phosphorylation and thus destruction preventing it building up in concentration.

Axin is a scaffholding protein that has seperate domains that interact with glycogen synthase kinase 3 (GSK3), casein kinase 1 (CK1) and &Beta;-catenin itself. Axin also contains a regulator of G-protein signalling (RGS) domain that interacts with APC gene product.

Axin coordinates the phosphorylation of &Beta;-catenin, which creates binding states for E3 ubiquitin ligase on the &Beta;-catenin.

When Wnt binds to LRP5/6 and Frizzled (at the same time) it brings them together and they bind intracellularly to the Axin complex. Wnt binding promotes phosphorylatio of sites on LRP5/6, which allows the binding. Axin binds Frizzled via Disheveled (Dvl/Dsh).

Dishevelled is a cytoplasmic scaffholding protein whose interaction with Fz is essential for Wnt-induced phosphorylation of LRP6. It also interacts with Axin and is important for Axin recruitment for the membrane.

Recruiting Axin to the LRP6/Frizzled complex leads to inhibition of the Axin-mediated phosphorylation as it takes the kinases with it, promating &Beta;-catenin stabilisation and accumulation. &Beta;-catenin then translocates to the nucleus, but how this happens is not well known (something todo with JNK).

The TCF/LEF family of transcription factors is the main partner for &Beta;-catenin in gene regulation. TCF represses gene expression by promoting histone deacetylation and chromatin compaction through Groucho (TLE1 in human). &Beta;-catenin displaces TLE1 relieving repression of gene expression, and the new complex recruits other co-activators for gene activation.

**Draw picture**: need to understand it.

#### Wnt antagonists

Wnt is inhibited by Dickkopf family of secreted proteins, e.g. Dkk1 which is an LRP5/6 antagonist.

#### Wnt agonists

The R-spondin (Rspo) are a family secreted Wnt/&Beta;-catenin signalling agonists

#### Other functions of &Beta;-catenin

&Beta;-catenin also interacts with the cadherins, which is essential for estabilishing a link to the actin cytoskeltin. Phosphorylation on specific residues enhances interaction with E-cadherin. E-cadherin phosphoryation can also enhance the interaction, but on other residues can inhibit it.

#### The non-canonical pathways

These are &Beta;-catenin "independent," though not nessisarily entirely. Includes Wnt/Calcium and Wnt/JNK. Wnt/JNK is involved in setting up cell polarisation e.g. in gastrulation, epithelial cells. Wnt/Calcium is linked with heart development.

In Wnt/Calcium activated Fz interacts directly with Dvl to activate PDZ domain&mdash;no Axin. Dvl directly interacts with trimeric G-proteins; stimulation of both leads to PLC activation. IP3 induced Ca2+ release activates CaM kinase II and calcineurin via Ca2+/Calmodulin.

In Wnt/JNK, Fz and Dvl activate small GTPases e.g. Rho and Ras which cause downstream activation of kinase such as JNK or Rho kinase.

### Transcriptional activators

_How protein phosphorylation regulates transcription_

Transcription factors contain both DNA binding sites and activation sites for protein-protein interactions. There are both general ("basal") and specific transcription factors. Jun-fos dimers are specific. Transcription factors are reqiured for RNA pol II to initiate RNA synthesis; they bind in a specific order. The basal machinery phosphorylates RNA polymerase to get it to start; specific factors interact with the basal factors.

The action of PKC, phorbol esters, RTKs, MAPK pathways all aim to alter gene transcription; this happens via phosphorylation of transcription factors or "related proteins."

Conserved DNA binding motifs include:

* Helix-turn-helix
* Zinc finger
* Leucine zipper
    * dimers, hetero and homo
    * Fos-Jun is not the same as Jun-Fos

Fos, Jun, and ATF are parts of the AP-1 family; Fos and Jun dimerase; Jun makes a homodimer; Jun and ATF dimerise and ATF homodimerise. Fos, Jun, and ATF are all made up of subtypes, e.g. c-Fos.

Stimulation of the MAP kinase pathways causes activation of ERK and JNK leading to the rapid synthesis of the AP-1 components c-jun and c-fos

Which residues are phosphorylated is critical for controlling which targets AP-1 complexes will transcriptionally activate

### Tumourogenesis

Tumour cells have a very high mutation rate. They have epigenetic alterations and genetic instability. There are dysfunctions in cell cycle checkpoints and repair enzymes, and have independence from mitogenic signals. They have a loss of contact inhibition and survive in foreign tissues&mdash;metastatis.

Tumour cells have an increased rate of cell division, loss of normal growth control, loss of ability to differentiate (often dedifferentiate, though the bulk of a tumour is differentiated), loss of contact inhibition, increase capability for invasion of neighbouring tissue.

1. Normal cell: Controlled proliferation; controlled apoptosis
2. Initial mutation in repair/cell cycle checkpoint genes; Alternately: epigenetic changes
3. Genetic instability; failure of cell cycle checkpoints; clonal expansion
4. Growth advantage; failure of apoptosis; clonal expansion!
5. Immortalisation; metastasis; invasion; angiogenesis

#### Genetic changes

* Loss of whole chromosomes
* Multiplication of chromosome sets
* Chromosome translocations
* Amplification of DNA sequences
* Changes in chromosome structure often seen in leukemias and lymphomas
* Extensive structural changes in later phases of aggressive solid tumours

#### Epigenetic changes

* Altered DNA methylation: global _reduction_ in CpG methylation
* Increased methylation of promoters for tumour suppressor genes
* Altered histone modification
* Altered miRNA expression: often a much more primitive (embryonic) phenotype

#### Mutations in oncogenes

The pathways activated most often are those that control cell proliferation: over activation of proliferating promoting components while impairing or loss of dampening/braking circuits.

Cells escape from quiescence state due to an increase in mitogentic signalling and or lowering of the threshold from the quiescent to dividing state. Mutations in progenitor cells or de-differentiation to progenitor phenotype are important from the transition to tumour.

Oncogenes are historically genes involved in retroviral tumourogenesis (viruses want their cells to replicate to hijack that machinery; viruses often carry mutated versions of cellular protooncogenes). They result in transforming or immortalising phenotype.

Tumour suppressor genes have a negative effect on tumour formation; must be inactivated.

Oncogene mutations tend to be gain-of-function and dominant; tumour suppressors are recessive and loss-of-function. Epigenetic changes contribute to oncogene activation. Some oncogenes are tissue-specific suggesting specific cellular context in which epigenetic state is permissive to induce tumourigenesis.

Oncogene fusion proteins arise from some chromosomal translocations; often the fusion of a transcription factor with a protein kinase. An increase in gene expression or stability leads to cellular concentration and enhanced mitogen signalling. Increased cellular amount of oncogene can be caused by:

* Promotor mutation
* Epigenetic changes
* mRNA stabilisation
* Gene amplification
* Reduced Ub-dependent proteolysis

Tumour suppressors can have reduced expression due to:

* Altered transcriptional activation
* Changes in promoter structure
* Epigenetic silencing

Tumour suppressors can also be silenced due to structural changes, causin:

* Altered subcellular distribution
* Altered enzymatic activity
* Changes in phosphorylation/postranslational modification

#### Genome stability and Tumour formation

DNA repair and damage checkpoints are important in tumour formation. Tumours have a mutator phenotype due to ineffective DNA repair. Tumour suppressors are often involved in cell cycle checkpoints and DNA repair.

Tumour suppressor hMSH2 is involved in mismatch repair (hereditary non-polyposis cancer&mdash;HNPPC).
 BRCA1 is a tumour suppressor involved in DNA recombination, DNA damage checkpoints, transcriptional regulation. Many proteins interact with BRCA1&mdash;it has both scaffolding and enzymatic activities.

 * DNA recombination: BRCA1 binds Rad51, which catalyses strand exchanged during recombination
 * DNA damage checkpoint: BRCA1 scaffolds kinase ATM and ATR. DNA damage causes these kinases to phosphorylate BRCA1
 * Transcriptional regulation: BRCA1 interacts with histone acetylases during chromatin remodelling
 * Ub-mediated proteolysis: BRCA1 binds UB ligase BARD1. Missense mutation in BRCA1 lead to loss of BARD1 activity
 * BRAC2 interacts with Rad51 and function at double strand breaks

#### Hallmarks of cancer

* Self-suffiency in growth signals (autocrine signalling: secrete own growth factors)
    * Cancer cells can acquire the ability to synthesise growth factors generating postive feedback loop
    * Truncated receptors remain constituatively active e.g. truncate EGFR lacking most of cytoplasmic domain
    * Intracellular signalling networks are often mutated e.g. Sos-Ras, MAP kinase, PI3K pathway
* Insensitivity to antigrowth signals
* Evasion of apoptosis
    * Cancer cells acquire resistance to apoptosis via a number of mechanisms
    * 50% of cancers have mutation in p53 tumour suppressor
    * Mutation of components in PI3K pathway
* Limitless replication
    * Telmerase upregulation causes escape from Hayflick limit

jeremy.owen@vuw.ac.nz

#### MAPK and Cancer

PI3K and ERK signalling is important for:

* Anoikis (apoptosis upon detachement)
* Cell adhesion
* Cell cycle regulation

Neoplastic cells are characterised by anchorage-independent cell cycle progression&mdash;cells usually die when they detach.

The cell has a certain basal level of signalling to survive, and too _much_ activation causes the cell to determine that something is up and die/arrest growth. Activation time is important. RAF regulates the response: strong sustained signalling causes cell cycle arrerst. Sustained MEK activation also causes cell cycle arrest. Phosphorylation of early gene products induced by MAPK are important&mdash;FOS, MYC, and Jun.

FOS is a sensor of the duration of ERK activation. Trainsient ERK activation causes FOS activity to decline before new FOS accumulates. Sustained ERK activation causes phosphorylation and stabilisation of FOS. Phospho-FOS facilitates entry into the cell cycle.

Erk signalling can cause both cell cycle progression and arrest, but most tumours show sustained RAF-MEK-ERK signalling&mdash;why don't tumours undergo apoptosis? A paradox. Answer: members of the RAF family have anti-apoptotic activity, both kinase-dependent and kinase independant. RAF activates NF-&kappa;B, a pro-survival transcription factor, in a protein-protein interaction (non-kinase). RAF anti-apoptotic action is not blocked by MEK inhibitors.

Lots of cellular processes require ERK activation, and there is a potential high toxicity if MAPK targeted&mdash;but cancer is fatal. This is why you tend to get a lot of unpleasent side effects. The key targets are RAS, RAF, and MEK.

Farnesyl transferase inhibitors:

* RAS is anchored to a membrane by an isoprenoid tail
* Tail attached via prenylation by farnesyl transferase
* Inhibitors could target tumours in which RAS is constituitively active
* FTIs are antiproliferative, pro-apoptotic, anti-angiogenic

But:

* A high concentration were required to inhibit oncogenic K-Ras compared with wildtype and oncogenic H-Ras
* K-Ras is the most common activated form of Ras
* K-Ras escapes FTI inactivation

RAF inhibitors target ARAF, BRAF, and RAF1. Oncogenic BRAF mutants are potential targets for RTK signalling. The V599Q mutation in kinase activation loop of BRAF leads to consitutive activation. RNAi targetting of BRAF confirms the role of BRAF in regulating proliferation and protection of apoptosis, so should be good target to resensitise to apoptosis by knocking down. BRAF mutation present in most melanomas, common in other cancers. BAY 43 is very effective in xenograft models against colon, pancreatic, and ovarian tumours. BAY 43 is however not specific for RAF&mdash;multikinase inhibitor, potential side-effects. Oncogenic mutations have only been identified in BRAF, which might be because BRAF has two phosphorylation sites for full activation (the other two have four each). RNAi knockdown of BRAF in melanoma cell lines blocks ERK activity. The crystal structure of BAY 43 and BRAF is solved. BAY 43 binds the kinase activation loop, which is conserved in many tyrosine kinases and is an oncogenic hot-spot.

MEK1 and MEK2 are ubiquitiously expressed in mammals, and both isoforms are targetted by ERK1 and ERK2. A number of MEK inhibitors are of limited clinical use, but have research uses. Drugs CI-1040 and PD0325901 have been tested in vivo. PD was useful in xenograph models where it inhibited tumour growth, and inhibits ERK activity at clinical doses.

Other potential targets include RSK. Positive allosteric agonists of phosphatases are unexplored avenues.

## Protein targeting and vesicular trafficking

### Compartmentalisation of cells

All eukaryotic cells have the basic set of membrane bound organelles (except those that don't, but we're not going there).

Lipid bilayers divide the organelles, also including cholesterol and glycolipid components specific to the membrane, and are 5nm thick. They provide a specific environment for cellular function. Membrane proteins are in a "sea of lipids," which together make the structure of the bilayer. Membrane proteins are divided into integral and peripheral, and are rich in transporters and receptors. The lipid and protein composition of a membrane is organelle specific, and to a lesser effect cell type specific.

Membranes function to partition the cell, imports and export specific molecules, and are impermeable to most hydrophobic(?) molecules. Membranes can change substantially in composition in response to signalling.

Organelles are not static&mdash;their position is dictated by the cytoskelton, and they can move along filaments.

#### The organelles

* Nucleus
    * Contains DNA, transcription
    * About 6% of cell volume
* Endoplasmic reticulum
    * Proteins are made on surface
    * Some free ribosomes
    * ER + Golgi about 15%
* Golgi apparatus
    * Sorting and modifying proteins
* Lysosome
    * Break down
    * 1%
* Endosome
    * Take in from outside
    * 1%
* Mitochondrion
    * Energy production
    * 22%
* Peroxisome
    * 1%
* Cytosol
    * Aqueous solution that pervades the cell
    * 54% of cell volume

#### Evolution of organelles

It is hypothesised that the topology of the nucleus and ER is governed by evolutionary origins. The invagination of the plasma membrane creates organelles that are topologically equivalent to the cytosol and communicate via pores. Ribosomes would first be bound to the outer membrane, but migrate into the invagination before it detaches from the outside entirely.

It is hypothesised that mitochondria evolved from a bacterium engulfed by a large eukaryotic cell. Edosymbiosis of mitochondria and plastids create double membrane organelles which contain their own genome. The environment inside a mitochondrion can be very different from its surroundings.

Other organelles arising from budding, pinching, and which fuse with the plasma membrane have an interior equivalent to the exterior of the cell.

#### Budding and fusion

Transport vesicles bud from the donor compartment, and fuse with the target compartment. The soluble components are enveloped in the transport vesicle, and are transported from lumen to lumen. The membrane is also transferred with the proteins retaining their orientation&mdash;the same domains are always facing the cytosol.

### Families of intracellular compartments

The nuclues and the cytosol go together, and communicate through nuclear pore complexes&mdash;topologically continous though functionally distinct. The organelles in the secretory pathway go together, communicating by budding&mdash;they are topologically equivalent. Mitochondria and plastids go together, being topologically distinct from the other two and each other.

### Synthesis of proteins

Proteins are synthesised by translation of mRNA in the cytosol, either on free ribosomes or on membrane bound ribosomes of the rough ER. Whether the ribosome exists in a free or membrane-bound form depends on whether the protein being synthesised contains an ER targetting sequence which directs the ribosome to bind to the ER membrane. Some polypeptides begin to fold during synthesis and the folding process is complete at termination of translation (generally free ribosomes) while others, generally those that are membrane bound, are co-translationally transported into the ER for processing.

### Modification of proteins by glycosylation

_"Glycan tagged"_

### Ways proteins can be sorted

_Post translation or co-translocation_

Ribosomes synthesise proteins in the cytosol and in the endoplasmic reticulum.

### Mechanisms by which proteins leave cytosol

#### ...to enter the nucleus

The nuclear envelope is made of two concentric membranes. The outer membrane is contiguous with the ER, while the inner membrane contains proteins that act as binding sites for chromatin and nuclear lamina. It is penetrated by nuclear pores, for selective import and export (bidirectional).

The nuclear pore complex (NPC) has a mass of 125 million Daltons, and is made up of about 30 different proteins ("nucleoporins") arranged in an octagonal cylindrical structure. NPCs are dissassembled and reassembled during mitosis.

Nucleoporins often contain repeats of different types of short sequences containing Phe-Gly (FG) which are thought to make sequential contact with receptor/cargo, allowing it to hop down the pore. Some nucleoporins are transmembrane proteins that are thought to anchor NPCs in the envelope. Others are dynamic, rapidly associating and dissasociating from NPCs.

The Nuclear Localisation Signal (NLS) is usually one or more clusters of lysine (K) and Arginine (R) rich short amino acid sequences. The two major types are the SV40 type (PPKKKRKV) which in many cases also contains a proline residue, and the bipartite type (KRPAATKKAGQAKKKK) made of two clusters separated by a spacer of 10 residues. There are many other sequences that exist also.

Nuclear import receptors are cytoplasmic proteins that bind to the NLS of cargo and Ran-GTP, and are members of a large family of proteins call karyopherins, which include importins and exportins. They sometimes require an adaptor to bind the target protein to the receptor. Different proteins may have different receptors that take them into the cell.

Nuclear import receptors contain repeated &alpha;-helices that stack on top of each other to form a spring-like structure. They cotnain multiple "heat" motifs within the helices which associated with the FxFG repeats of the NPC to form weak and transient bonds. The spring like structure can adopt multiple conformations in response to binding of Ran-GTP and cargo proteins.

The nuclear import receptor binds the cargo and takes it in to the nucleus. After disassociating from the cargo it binds to Ran-GTP, and brings that out. The Ran-GTP hydrolyses to Ran-GDP, and dissociates. The cycle repeats.

Nuclear exports requires a Nuclear Export Signal (short streatches of AAs rich in Leucine (L)). Exportins bind Ran-GTP and the cargo in the nucleus, and disassociates from both once it leaves. It returns alone.

The Ran-GTPas controls the direction of nuclear transport. It is a small GTPase that is common to all eukaryotes. "Ras-related nuclear protein"; a member of the Ras family. Ran-GAP (activating protein) is a regulatory protein that binds and promotes Ran GTPase activity of the hydolysis of GTP. The guanine exchange factor Ran-GEF activates Ran GTPase by stimulating the release of GTP to allow binding of GTP. The assymetric distribution of Ran-GAP and Ran-GEF controls the activity of Ran in a way that allows Ran to mediate active transport through the nuclear pore complex. Ran-GEF binds to the chromatin in the nucleus and causes Ran-GTP to predominate in the nucleus. Ran-GAP is free in the cytosol, promoting Ran-GDP in the cytosol.

#### ...to enter the mitochrondrion and plasmids

Both contain their own ribosomes and DNA for creation of proteins, however the majority of their proteins are encoded on nuclear DNA and are synthesised on cytoplasmic ribosomes as _precursor proteins_. Translocation in the mitochondrial matrix is governed by signal sequences (the n-terminus sequence cleaved after import, or "presequence", and an internal sequence that is not cleavable) and translocator proteins.

The TOM and SAM complexes function across outer membrane. The TIM cokplexes (TIM23 and TIM22) function accross inner membrane. The OXA complex mediates insertion of inner membrane proteins synthesised within mitochondria and helps to insert some of the proteins initially transported into the matrix (export). These complexes contain components that act as receptors and others that act as transporters.

_TOM stands for Translocase of the Outer Membrane_

TOM20 recognises the presequence at the N-terminus; TOM70 recognises internal targeting signals without presequence.  TOM40 is a &Beta; barrel protein which acts as a translocation channel. Other proteins are also involved in the complex

1. The unfolded polypeptide chain is bound by cytostolic chaperone Hsp70
2. Precursor proteins bind to receptors of TOM
3. Hsp70 removed and unfolded polypeptide transferred to translocation channel

This process occurs at contact sites joining inner and outer membrane. TOM then passes the peptide to TIM, to cross the inner membrane. After entering the mitochondrion the mitochondrion's own Hsp70 binds to help pull it through. The interaction with Hsp70's at both ends require ATP, in order to power the transport. The H<sup>+</sup> proton gradient across the inner membrane also helps power the process.

Protein transport into inner membrane and intermembrane space requires two signal sequences. The second signal is usually a hydrophobic sequence immediately after the first signal sequence, acting as a "stop transfer sequence" preventing further transport accross IM. The cleavage of the first signal unmasks the second signal used to translocate proteins from matrix into and across IM using OXA; proteins encoded in the mitrochondria inserting into the IM use OXA. Soluble proteins are delivered into the intermembrane space using the same pathways and are cleaved by a second signal petidase with the active site in the inter membrane space which removes the second hydrophobic signal. Proteins with internal signal sequences are bound by chaperones in the intermembrane space, which drive the proteins to TIM22 for insertion of multi-pass inner membrane proteins.

The insertion of porins (&Beta; barrel proteins that are freely permeable to inorganic ions and metabolites) into the outer membrane requires them to be first transported into the inter-membrane space by TOM as TOM cannot insert them itself using &alpha; helical anchoring. They then transiently bind specialised chaperones that guide the unfolded polypeptide chain to SAM, and SAM then inserts them into the outer membrane.

#### ...to enter the peroxisome

#### ...to enter the ER, Golgi, lysosome, secretory vesicles

Proteins in the ER system are synthesised on the rough ER membrane, and are transported into the ER "co-translocationally". Proteins can be retained in the ER or transported to the Golgi and from there to a network of other organelles and the cell membrane.

### The role of signal sequences

Signal sequences can be single or multiple, and can be located at either end of the protein or at any point within the sequence. Signal sequences can be up to 60 AA long, while signal patches are 3-dimensional arrangement of multiple internal amino acid sequences on the protein's surface. Sorting signal recognise complementary sorting receptors which dock the transported proteins ("cargo"), and unload cargo&mdash;they operate catalytically, so can be reused.

### The fate of protein of failing sorting signal



## Regulation of cell cycle and apoptosis

## Proteomics

## Glossary

COMET
:   Assay which detects cell death via trails of DNA fragments in gel

TUNEL
:   Assay which detects cell death via inserting fluorescent nucleotides to ends of DNA fragments

Vital stain
:   Stain which is excluded from living cells but stains dead cells

BRDU
:   Nucleotide analogue, stains green

Akt
:   Also known as Protein Kinase B

Flow cytometry
:   System for measuring cells individually via a machine, e.g. detecting count of fluorescing cells

Baa domain
:   "Basic amphipathic alpha helix," the target motif of Calmodulin

Amphipathic
:   Both hydrophillic and hydrophobic

pY
:   <strong>P</strong>hospho-t<strong>y</strong>rosine

GPCR
:   G-protein coupled receptor

PKC
:   Protein kinase 3

IM
:   Inner Membrane (e.g. of mitochondrion)

OM
:   Outer Membrane (e.g. of mitochondrion)

## Footnotes
