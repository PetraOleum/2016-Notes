#BMSC 343: Advanced Genetics

Notes for BMSC 343: Advanced Genetics, 2016, by Petra/Peter Lamborn, student ID 300280340. This file is written in Markdown, and may be converted to html or another format by a program such as markdown or calibre. Use footnotes extension.

Timetable:

* Monday: 11-12, Hunter LT 220
* Tuesday: 9-10, Maclaurin LT 101
* Friday: 11-1, Hunter LT 220

Key dates:

* First lecture: 29 February
* Easter break: Thursday 24 March &mdash; Wednesday 30 March
* First mid-term test: Friday 1 April
* Labs: Four, on Wednesday or **Thursday**, weeks 6 to 9 (6 & 7 April to 4 & 5 May)
* Mid-term break: Monday 25 &mdash; Friday 29 April
* Second mid-term test: Friday 6 May
* Last lecture: Friday 3 June[^lastlecture]
* Exam: 2 hours, 9:00 am (come 15 mins early) Wednesday 22 June in MY221 (typing)

[^lastlecture]: Presumably, as this is the last day and is a Friday.

By the end of the course you should be able to explain the genetics of ageing, population genetics, epigenetics and chromatin structure, cancer genetics, next-generation sequencing.

##Cheat Sheet

Important information to <s>remember</s> look at before exams.

###Codon Table

![Standard RNA codon table](Codontable1.PNG "Standard RNA codon table, from Wikimedia Commons, public domain")
_Standard RNA codon table, Wikimedia Commons, Public Domain._

![Fancy RNA codon diagram](Aminoacids_table.svg "Fancy RNA codon diagram, from Wikimedia Commons, Public Domain")
_Fancy RNA codon diagram, Wikimedia Commons, Public Domain._

###Forward and reverse genetics

In forward genetics you find gene that relates to function. Think of old-style "what locus correlates with this known phenotype?" questions.

In reverse genetics you characterise gene to find function. E.g. does knocking out gene effect lifespan. Newer-style&mdash;"Ooh, what does _this_ mutation do?"

##The Genetics of Ageing

This is the first topic, with Andrew Munkacsi as lecturer. It seems controversial.

> "Advocates of what has become known as anti- ageing medicine claim that it is now possible to slow, stop or reverse aging through existing medical and scientific interventions. Claims of this kind have been made for thousands of years, and they are as false today as they were in the past."
>
> &mdash; _Position Statement on Human Aging, S. Jay Olshansky, Ph.D., Leonard Hayflick, Ph.D., Bruce A. Carnes, Ph.D., +48 other leading ageing researchers._

###Fundamentals

Munkacsi has a set of definitions, which de Grey would probably disagree with heartily. These amount to:

* _Ageing_ is gradual, irreversible (apparently), and the sum process of maturation to a fit and healthy adult and the decline thereafter.
* _Senescence_ is derived from the Latin _senex_ for old age, and is the term for the process by which the capacity for cell division, growth, function, etc, is lost over time.
* Ageing is a biological process.
* Ageing is not a disease, per se. This is probably the point with which de Grey would disagree with the most.

####Why ageing should be studied

There was a massive increase in longevity in the 20th century, which is both "a triumph and a challenge." There were 605 million people over 60 in 2002 , but by 2050 there are expected to be almost 2 billion. This leads to about half of doctors' time and hospital stays being related to ageing, while only a tiny fraction of health professionals have adequate training in ageing. We have an obligation as scientists to do research that would help society as a whole.

####Correlations

A longer lifespan correlates with a slower metabolism, generally speaking. For example, Tuatara live for a long time and have a low metabolism, while mice live for a short amount of time and have a relatively fast metabolism.

Increased production of gametes correlates, and in some cases causes, a decrease in lifespan, while the reverse is also true.[^gametesvslifespan]

[^gametesvslifespan]: Mutating _C. elegans_ to reduce sperm production dramatically increases lifespan, while female _D. melanogaster_ lifespans are shortened by increased egg production, courting, and conception.

####Unusually long-lived organisms

Credited to optimised genomic maintenance.

* Some birds, particularly tropical birds and some seabirds.
* Bats are relatively long lived&mdash;little brown bat lives for 30 years, while other organisms its size live only 2 and a half.
* Bristlecone pines live for 5000 years.
* Dahlia anemones are outright non-aging.
* The naked mole rat is resistant to age-related diseases.

####Human populations

From 1900 to 1990, the average life expectancy at birth in the U.S. increased substantially, and a lot more than the average life expectancy at age 65. Meanwhile, in 1996 it was predicted that the number of centenarians in the United States would increase from around 72,000 in 2000 to around 834,000 in 2050, more than a tenfold increase. This would be most dramatic in non-white groups.

In New Zealand, we are ranked at the 20th highest average lifespan in the world. In most, though not all, countries, female life expectancy tracks consistently above the male life expectancy. Botswana and South Africa are exceptions to this.

Over at least the last half century, Maori life expectancy has been dramatically lower than that for Pakeha, though the gap closed somewhat between the 50s and the 80s.

####Ageing and disease

There is a strong association between aging and disease frequency, for many but not all diseases. As age increases, the percentage with asthma declines somewhat, but is overtaken by large increases in e.g. cancer, arthritis, and heart disease.

As people age, certain biomarkers reveal the progress of ageing:

* Endocrine function becomes less efficient over time.
* Brain functions change.
* The heart itself weakens, while deposits form in arteries.
* Some people lose the ability to properly regulate glucose and develop diabetes.
* Muscles atrophy.
* Bones weaken.
* The immune system begins to let down its guard.
* Oxidative stress builds up.

####The requirements for biological lifespan extension

1. Understand the ageing process.
2. Develop manipulations of organisms which slow or reverse the process, so as to:
	* Increase early survival
	* Increase late survival
	* Delay senescence
3. Technologies to implement aging treatments:
	* Drugs
	* Gene therapy
	* Cell therapy

####Model organisms

Model organinisms share certain features. They have relatively short lifespans, allowing results to be gathered quickly, or over multiple generations. They are easily maintained and inexpensive. They are less complex than humans and are easily genetically engineered. They reveal shared evolutionary origins of species, genes, and biochemical pathways. Most importantly, there is a community of scientists studying them, sharing physical and informational resources.[^modelcommunity]

[^modelcommunity]: As a general rule, the more closely related the subject is to humans, the less friendly the community.

* _E. coli_
	* 20 minute generation time
	* 4.6 Mbp genome
		* 4300 genes
* _S. cerevisiae_
	* 90 minute generation time
	* 12 Mbp genome
		* 6000 genes
* _C. elegans_
	* 3 day generation time
	* 97 Mbp genome
* _D. melanogaster_
	* 2 week generation time
	* 180 Mbp genome
* _M. musculus_
	* 8 week generation time
	* 2700 Mbp genome
* _A. thaliana_
	* 6 week generation time
	* 125 Mbp genome

###Constructing mutations to identify ageing genes, drugs, and networks

Genome sequencing is only the beginning of genetics research. We want to ask:

* What is the function of the gene?
* Where in the cell/body does the gene function?
* What regulates the function of the gene?
* What is the molecular variation of the gene?

There will be questions in the test asking you to come up with expirements to come up with answers to these questions.

The function of around 12,000 human genes are not known&mdash;around half. In large part, this is because no null mutations in these genes are known. You also can't get funding to outright find function of genes; you need a hypothesis.

####Bakers yeast

_Saccharomyces cerevisae_ is a very useful organism here. It's one of the simples eukaryotes, can grow on solid or liquid media, and cells can grow as both haploid and diploid. The genome was sequenced in 1998, and homologous recombination paved the way for mutant libraries. It's cultures can be frozen indefinitely at -80 Celsius, and is amenable to robotics.

####Yeast life cycle

Haploid cells have two mating types, &alpha; and a. These have to mate with each other to produce the diploid life cycle. The diploid can reproduce by mitosis, or undergo meiosis to produce a haploid tetrad. This tetrad can be physically separated for experimentation, allowing visualisation of segregation from meiosis. The haploids can reproduce by mitosis before mating to produce the diploid again.

####Creating yeast knockouts

You have to create a synthetic cassette which contains a drug resistant gene to replace the gene being knocked out. The resulting yeast that survives in the presence of that drug will be guaranteed to have the gene knocked out. Very long primers, containing TAG barcodes and upstream and downstream sequences around the tags. The barcodes identify the gene being knocked out, while the up and downstream tags are for PCR to amplify the barcodes for detection later. A 45 base primer is added to each end complementary to the region of the genome that contains that end of the genome.

The cassette is inserted into the genome via homologous recombination. Note that yeast has few introns, which simplifies this whole process. The yeast is incubated for a bit, and is then plated onto an agar plate that contains a drug that would normally kill yeast, but which the cassette provides resistance. In addition, to make sure that the cassette is inserted into the correct place, a collection of primers is used to amplify the edges of the cassette and the original gene. E.g. if the Open Reading Frame you are getting rid of is still there, using a primer upstream of the start and another downstream of the start would amplify, but if the gene was knocked out it would not. Replacing the second primer with a primer from downstream of the start of the cassette would produce the opposite result, only amplifying if the knockout was successful. The same thing can be done with primers at the downstream end of the gene.

You require two barcodes for the same gene to ensure that the complete cassette has been inserted, but more importantly you get duplicate readouts for each gene that you are quantifying.

####Methods to investigate function of essential genes

Some genes cannot be knocked out without killing the yeast outright. This is about 20% of the yeast genome (1282 genes).

Instead of knocking them out you knock them _down_, i.e. reduce the expression. You can insert temperature sensitive alleles into the promoter, altering the expression level under your control. Tetracycline promoters can be used, allowing regulation via the titre of a drug. The mRNA can can also be perturbed via DAmP.  DAmP involves inserting the drug resistant gene into the untranslated region downstream.

####Competitive growth assays

* Pool deletion mutants
* Grow mutants in the presence of a drug,[^drugadded] or the absence
* Amplify the barcodes
* Hybridise in microarrays
* Identify barcoded deletions

[^drugadded]: E.g. Caffeine&mdash;not the drug used for ensuring that the cassette is present, but the one you're testing.

###Genetic analyses of gene-gene and gene-drug interactions

Note: the interactions do not need to be physical interactions. Gene-gene interactions are the effects of removing a gene on e.g. another gene somewhere along the same pathway.

####Chemical genetics

This is gene-drug interactions&mdash;drugs are just chemicals. We can use compounds to directly affect gene function, binding specifically to a protein and knocking it out. We can view the compound as a "mutation." Compounds work rapidly and are reversible and titratable. Mutations are generally neither of those, limited to temperature and drug-inducible proteins etc. Essential gene mutations can extensively be investigated with compounds.

Things you discover like this in yeast can be translated into humans:

* Determine precise mechanisms of drug action by identifying the major drug target as well as off-target effects
* Identify novel, "undruggable" targets to expand the fraction of the genome that can be exploited for chemotheraputic intervention
* Identify novel chemical probes

In forward genetics we start with a known phenotype, perhaps the result of a mutation, and look for a gene. In reverse genetics you are tyring to characterise a gene. The same logic applies to chemical genetics.

In forward chemical genetics (phenotype based) you have a disease model. Because you are using a model you already have a library of genes. You use a phenotype assay to work out a drug impacts on a gene. You are trying to find the drug target.

The chemical mimics a genetic mutation. You have a situation where the drug knocks out a gene, while another gene has been knocked out, and the cell dies, even though only one or the other would not kill it. We see that this produces the same results as a particular gene being knocked out, so we know the drug acts on that gene.

A matrix of drugs vs genes can be used to identify patters and clusters of compounds. Drugs with similar targets have similar patterns.

Chemical genetics started with "independent" analyses of haploid mutants. This allowed finding the genes that influenced the drug target, but not the target itself (as it would have to be knocked out if it was tampered with at all in this case).

It then exploited the uptag and downtag barcodes in pooled analyses of diploid mutations (requiring less compound). The effect on drug sensitivity of gene mutations can be rapidly quantified (see _competitive growth assays_ previously). 

HIP-HOP[^HIPHOP] in yeast is used to identify primary and secondary drug targets. HIP is based on drug-induced haploinsufficiency. Drug-induced haploinsufficiency is the observed growth sensitivity in the presence of a drug of a diploid yeast strain heterozygous for the gene encoding the drug target. HOP assay is used to identify specific genes that act to buffer the drug target. HIP identifies the expected primary target, the HOP identifies the genes downstream.

[^HIPHOP]: HaploInsufficiency Profiling; Homozygous deletion profiling.

###Gene-gene interactions

The genetic interaction network is regarded as a functional unit of the cell. Cell function is the resultant integration of the network of networks acting in concert within the cell. Local networks are enriched in genes that show a similar phenotype.

Functional annotation must also account for epigenetic regulation and epistatic genetic interactions. 

_Epigenetics_ is the heritable change in phenotype not accompanied by change in DNA sequence. It is often associated with histone methylation patterns.

_Epistasis_ is where one gets more than the sum of the parts of contributing genes in the phenotype. Measurement of epistasis between genes allows characterisation of gene networks.

_Synthetic lethality_ is the knockout of two non-essential genes which then confers lethality. It reveals functional redundancy, and is an example of epistasis.

A Synthetic Genetic Array (SGA) is used to identify genetic interactions.

Duplicated genes have fewer genetic interactions that non-duplicated genes.

###Protein-protein interactions

Or _PPIs_ for short. All about proteins that physically interact with each other. An analogy to _fishing_ for a protein can be made.

Yeast two-hybrid screens are often done using heterologous(?) expression in yeast (but can be done in other organisms). It involves taking a protein, expressing it in yeast, exposing it to a library of other proteins, and seeing if you can detect a reaction.

In classical Y2H you fuse the sequence of a DNA binding domain (DBD) to your favourite protein, and your library of proteins (the ocean you are fishing in) is fused to the activation domain corresponding to the DBD. They will only bind in this case if the two original proteins physically interact. The DBD then binds to a transcription factor e.g. Gal4 that activates a reporter gene which allows the yeast to grow on a selective medium. Then you have to find out which protein(s) it was that interacted, by sequencing the plasmid that provided the protein.

In _reverse yeast two hybrid_ (rY2H) you start with two proteins you know to react. You can then screen against a library of chemical compounds to see what might disrupt that interaction. The DNA binding domain etcetera are still used.

In the _yeast three-hybrid_ (Y3H) system you have a protein and a drug that interacts with it, and you are searching for another protein that interacts with the drug together with the first protein. You again have to sequence to determine which protein from the library.

In a _membrane yeast-two hybrid_ (MY2H) system involves membrane-bound proteins bound to Cub (the c-terminus of the ubiquitin protein) plus a transcription factor, and the other to NubG (the n-terminal of the ubiquitin molecule, with some mutations to make it less active). If the two parts fuse a protease will cleave off a transcription factor which will migrate to the nucleus and set off the reporter. The second protein doesn't have to be membrane-bound.

In _cytoplasmic yeast-two hybrid_ you use the Cub/NubG in the cytoplasm and not the membrane&mdash;not limited to the membrane.

You can get a lot of false-positives (10 to 40 percent) but the sequencing of the resulting colonies can start cutting down on these immediately. Noise come from, among other things, the fused proteins interfering with the normal results.

You can also use drug-resistance proteins fusing, or fluorescent tags.

###RNAi

RNA interference.

Discovery was made due to studies in _C. elegans_ and flies. RNAi is an RNA-dependent gene silencing process that is controlled by the RNA-induced silencing complex (RISC). When extra pigmentation genes were added to petunias to enhance colour, in parts of the flower the pigment was removed outright. The original experiment failed completely, but lead to the concept of "co-suppression." In _C. elegans_, applying double-stranded RNAs were shown to trigger gene silencing.

siRNAs have a defined structures: 19 base-pair duplexes with 3' overhangs would achieve knockdown in worms. The duplex sequence would match the target DNA. RISC notices the overhang as a fault in the system, targeting corresponding mRNA for destruction. But there are off-target effects, depending on how much the RNA matches other parts of the genome. A quite powerful technique, but you only ever get knockdown (to varying levels), but not knockout or over expression.

Parallels between this and CRISPR are important. In RNAi you can only knock down, but with CRISPR you can knock out or replace a gene, or increase expression. Both, however, have off-target effects.

In a therapeutic setting, a siRNA would be modified to be able to be targeted to the correct cells and enter the cell. The aim of this would be to get knockdown in humans. This has not been successfully done as yet, but is being worked on.

###CRISPR

CRISPR stands for _Clustered Regularly-Interspaced Short Palindromic Repeats_, and is a method to edit genomes. CRISPRs were originally discovered in bacteria in 1987, but only around 2011 or 2012 did its applications for genome editing begin to be realised. CRISPR functions as nature as part of bacteria's mechanism for countering viruses&mdash;it provides a mechanism for destroying the DNA of known DNA viruses. The mechanism involves a protein and an RNA strand which matches in sequence the sequence of DNA; the break occurs at a precise location along this match.

CRISPR amounts to the ability to create double-strand breaks in DNA wherever you want. We're really good at targeting a specific location in the genome with this, but not so great at making sure what you want to happen is what happens. Generally it's very rare to get exactly what you want to happen, and only what you want to happen, so it's not quite ready for medical use as yet, but probably soon will be.

Recombination occurs to repair double-strand breaks, which can result in either deletions or insertions. By adding a donor template you can&mdash;in theory&mdash;make a precise insertion or deletion. You need to make two breaks to make a large deletion or rearrangement&mdash;many CRISPR constructs can be done at once.

In short, CRISPR allows researchers to create damage and then use the cells natural processes to fix it, ideally in the way that they want them to.

####CRISPR in nature

crRNA, containing CRISPR repeats and protospacers,[^protospacers] is transcribed, as is a tracrRNA. These two RNAs hybridise and complex with a Cas9 protein. This protein then cleaves DNA when the crRNA matches DNA

[^protospacers]: The protospacers hybridise with the tracrRNA, while the CRISPR matches the sequence.

####Engineered CRISPR-Cas

CRISPR-Cas exploits a fusion of the crRNA and tracrRNA sequences synthetically.[^gRNA] This works because Cas9 works on DNA generally, and not just Viral DNA.

[^gRNA]: This fusion is called _guide RNA_, or gRNA.

####Single-strand breaks

There are normally two nuclease domains on the Cas protein, HNH (which cuts on the strand that is recognised by the RNA) and RuvC (which cuts in the same place on the other strand). Mutating RuvC can cause the Cas9 nuclease to only cut on the side recognised by the RNA, leading to a single-strand break. This will cause base-repair but not deletion.

Alternately, HNH can be mutated to only cut on the side that is _not_ recognised by the gRNA. Further, 5' overhangs can be created with two mutant Cas9 proteins to improve specificity.

####Inactivated Cas9

dCas9 (dead Cas9) can target specific locations but not cut. If fused to effector domains, activation domains, or fluorescent tags, this can be exploited to locate or otherwise detect DNA sequences. CRISPR thus has applications beyond mere editing.

###Free-radical theory of ageing

Free-radicals, or reactive oxygen species, can be produced simply by respiration. As mitochondria generate ATP, some of the electrons passing through carrier proteins leak and react with oxygen molecules. In addition, other processes such as ionising radiation and inflammation can produce ROS.[^ROS] Antioxidants counter ROS.

[^ROS]: ROS: Reactive Oxygen Species, another term for free radicals.

ROS produce oxidative stress. Common free radicals include superoxide, hydroxyl, nitrogen dioxide, hydrogen peroxide. ROS can damage membranes, proteins, and DNA. Mitochondrial DNA cannot be repaired in the same way as nuclear DNA.

####Genetic pathways

The body has multiple defences against free-radicals. Superoxide dismutase (SOD), catalase, and glutathione peroxidase are all enzymes involved. Overexpression appears to increase lifespan.

###DNA damage theory of ageing

It is easy to prove that there is more to ageing than oxidative stress&mdash;the blind salamander lives to 100 despite being very small and having a relatively high level of oxidative stress.

Major sources of DNA damage:

* Depurination: 
	* the loss of a purine (Adenine/Guanine) base
* Deamination
	* the loss of an amino group
	* e.g. Cytosine &rarr; Uracil
* Thymine dimers
  	* mutagenic
	* enhance deamination of cytosine
* DNA strand breaks

There are four major repair mechanisms in ageing and age-related diseases.

####Base-excision repair

Works on deaminated and oxidised DNA.

* A DNA glycostkase recognises a damaged base and cleaves between the base and deoxyribose in backbone
* An AP endonuclease cleaves the phosphodiester backbone near the AP site
* DNA polymerase I initiates repair synthesis from the free 3' OH at the nick, removing a portion of the damaged strand and replacing it with undamaged DNA
* The nick remaining after DNA polymerase has disassociated is sealed by DNA ligase

####Nuclease excision repair

Works on thymine dimers.

* Two excision nucleases bind DNA at site of dimer (lesion)
* One cleaves the 5' side and the other cleaves the 3' side of the lesion
* Helicase removes the DNA segment
* DNA polymerase fills the gap
* DNA ligase seals the nick

####Mismatch repair

Works on mutations; is not base specific.

###Telomeres

Telomeres are fundamental to preventing DNA damage, analogous to plastic on end of shoelaces or whipping on the end of a rope. Human sequence: TTAGGG. There is a telomere repeat sequence on the end of each chromosome. It is a good indicator of lifespan. Without them, the ends of chromosomes would become tangled, leading to chromosome fusion and genomic instability.

Each time DNA replicates and a cell divides, the length of the telomere must shorten. Once telomeres shrink to a certain level cells can no longer divide; hence senescence and ageing.

Telomeres function as a mitotic clock for mortal cells.[^immortalcells] Telomeres shorten from 10-15 kb to 3-5 kb after 50-60 doublings. Cell senescence is triggered when cells acquire one or a few critically short telomeres.

[^immortalcells]: Immortal cells can divide indefinitely without change in telomere length.

####Hayflick limit of mortality

The Hayflick limit is the number of doublings cells can complete before senescence. Humans would be expected to be able to live for 120 years, Galapagos turtles 175 years, mice 3 and a half years. Older cell donors have a lower cell proliferation potential. The average loss of telomeres _in vitro_ is 15 bp per year, losing 1200 bp over 80 years. The loss varies over cells and tissues, however. Telomere loss is affected by ROS.

Hayflick died of cancer after famously predicting that he would live to 120; he was a proponent of caloric restriction.

####The end of replication problem

In cell replication, the daughter strand will always end up with a 5&prime; gap, causing loss of length. Telomeres at the end of the chromosomes get shortened by this mechanism, protecting directly functional DNA.

Telomerase is an RNA-directed DNA polymerase (a reverse transcriptase) which stabilises telomere length. It is referred to as a cellular immortalising enzyme as it is essential for replicative immortality in most eukaryotes. Most normal cells lack this enzyme. High telomerase activity exists in germ cells, stem cells, epidermal skin cells, follicular hair cells, and cancer cells.

Telomerase uses an RNA template to extend the length of the 5&prime; gap by adding nucleotides, allowing DNA polymerase to then reduce the length from the other direction.

####The p53 checkpoint

p53 senses short telomeres as DNA damage, stopping cell division. Tumour cells often lose p53, meaning that short telomeres are not detected and increasing genomic instability, potentially promoting tumorigenesis.

####Manipulating telomerase

In theory, detecting increased expression of telomerase should be a good mechanism to detect cancers. Further, anti-telomerase drugs should be able to kill cancer. The telomerase control gene is on chromosome 3.

Over expression of telomerase delays ageing in yeast and human cells. Telomerase reactivation in telomerase-deficient mice has been shown to double ageing.

Mouse telomerase RNA knockout is a mouse model of ageing. It leads to progressive telomerase shortening over successive generations, along with increases in skin ulcers and hair greying.

####Non-telomeric ageing

Some animals don't undergo telomere shortening but still age, e.g.

* Rabbits
* Hares
* _D. melanogaster_ (has no telomeres)
* Podospora (a fungus)

Senescence can also occur in the absence of telomere shortening, or in cells that do not divide.

###Progeria (premature ageing)

Progeria can be used as a model for normal ageing.

####Commonalities with normal ageing

* Hair loss (18+ genes)
* Cardiovascular disease (30+ genes)
* Stroke
* Lung disease
* Joint stiffening

####Differences with normal ageing

* Not necessarily an increased risk of cancer
* Not necessarily risk of neurodegenerative disease
* Diabetes is rare
* No loss of vision or hearing

####Progeria accelerates ageing

Generally by about 8 times the normal rate. The first case was found in 1886. There have only been 100 reported cases in the whole world since discovery. About 1 in 8 million newborns are diagnosed with progeria. It is possible to have progeria in only one tissue.

####Werner's syndrome

An accurate, but imperfect, model for normal ageing. It is caused by mutations in WRN gene (a member of the RecQ helicase family). The mutations result in an inability to re-initiate a stalled DNA replication fork, leading to:

* Increased frequency of deleterious mutations and double-strand breaks
* Normal childhood, symptoms in teens
* Premature grey hair and hair loss
* High risk for atherosclerosis, diabetes, and cancer
* No greater risk for neurodegeneration, normal immune system

WRN is critical for DNA repair.

Cellular defects in Werner's:

* Genomic instability
	* Chromosomal rearrangements
	* Large spontaneous deletions
* Telomere maintenance
	* Shortened telomeres
	* WRN co-localises with telomeric DNA in some cells
* Recombination
	* Hyper-recombination
	* Recombination defects
* Transcription
* Apoptosis
* Reduced Hayflick limit (20 generations, down from 60)
* Replication
* DNA repair
* Increased rate of somatic mutations

Werner's cellular phenotype is reversed by telomerase expression.

####Hutchinson-Gilford syndrome

Another example of premature ageing. Caused by a point mutation in lamin A (LMNA) gene. LMNA encodes protein that forms a network of filiments beneath inner nuclear membrane; A-type lamins can bind directly to DNA and mutations result in genomic instability and shorter than normal telomeres.

Symptoms:

* Early cell senescence
* Early hair loss (1 year old)
* Growth and joint defects (2 years old)
* Thin skin
* Severe vascular problems (strokes at 9 years old)

Lamin A mutations are associated with many disorders e.g. in skeletal and cardiac striated muscles.

Hutchinson-Gilford syndrome was first described in 1886 by Jonathan Hutchinson and further described in 1904 by Hastings Gilford. Symptoms can begin at 6-12 months.

* Slow growth
* Dwarfism
* Loss of hair
* Disproportionally large head
* Pinched facial features
* Near complete absence of subcutaneous fat
* Incomplete extension of knees and elbows (stiffness of joints)
* Coronary artery disease
* Generally a senile appearance
* By 10 years old patients start turning grey, loss of life in teens (typically of heart disease)

Caused by a _de novo_ point mutation, which causes the loss of 50 amino acids as a result of aberrant mRNA splicing. Quite possibly curable via CRISPR.

####Can you treat progeria?

It might be possible to treat premature ageing with anti-normal ageing drugs, which would be very useful.

###Caloric restriction and Sirtuin genes

Caloric restriction (CR) is the concept of effectively inducing an organism to believe that it is experiencing a famine, which changes metabolic pathways in ways that lead to an increased lifespan. This has been observed in numerous model organisms, including rats, mice, _Drosophilia_, and _C. elegans_.[^modelCR] The degree of lifespan extension is proportional to the degree of caloric restriction.

[^modelCR]: In rats the mean lifespan on CR (33 months) is the same as the maximum lifespan without. In single-celled yeast an increase in generations before reaching senescence is observed, albeit not as dramatic as increases in lifespan measured in units of time.

The discovery of caloric restriction came from observations in model organisms, initially yeast. Experiments for other purposes found that starving yeast by giving them about half of the nutrients normally supplied increased its lifespan. More complex experiments in mice followed.

The underlying mechanism for CR involves nutrient pathways that regulate longevity. The primary gene family involved is called Sirtuin, and the specific genes tend to be called Sir or SIRT. The signalling pathway for CR is broadly conserved from yeast to mammals. Certain related mutations can substantially increase lifespans in model organisms.[^extraSIR2]

[^extraSIR2]: An experiment involving gene deletions in the entire genome found that SIR2 deletion dramatically decreased yeast longevity, but an extra copy adds a significant increase.

####Exam-like question:

* What experiments can you design to determine if SIR2 and CR are in the same pathway?
* Expected results for the same pathway?
* Expected results for different pathways?

####Ageing genetics in yeast

There are two types of ageing in yeast:

* **Chronological ageing** in non-dividing cells: ethanol builds up in the external medium and converts to acetic acid, eventually triggering cell death; within the cell, oxidised proteins and damaged mitochondria build up.
* **Replicative ageing** in replicative cells: the mother cell asymmetrically inherits cell damage and removed from daughter cells. In very old cells the asymmetry breaks down and daughter cells inherit some of the damage.

The yeast Sirtuin gene is SIR2. SIR2 is a deacetylase, modifying the histones in chromosomes. This represses a target, eventually leading to longevity. Deletion of SIR2 leads to an increased copy number of rDNA and an unstable genome.

Ribosomal DNA is the most common gene in the genome and is located in the nucleolus, but this leads to potential genome instability. Yeast rDNA on chromosome XII gives rise to 3 &mu;m circular forms of rDNA, composed of single rDNA repeat, which is capable of self-replication. These are called ERCs. Recombination and other processes can cause multimeric rDNA ERCs which can approach 100 kb in length. Mutations that increase ERC formation decrease lifespan, and vice-versa. ERCs are asymmetrically inherited by the mother cell.

ERCs can be formed by homologous recombination between adjacent rDNA repeats. Sir2 influences this process, and its absence can lead to repeats pinching off and creating an ERC.

####Resveratrol

Caloric restriction is unpleasant, so can you influence the pathway via a compound that mimics caloric restriction? Resveratrol (RSV) has been found to have the same profile as CR and Sirtuin manipulation. A litre of wine contains up to a 20th of the resveratrol in a 100mg capsule, so this is not a great way to get it.[^resveratrolingrapes]

[^resveratrolingrapes]: Resveratrol is also in grapes, but this isn't such good advertising.

Resveratrol inhibits numerous major disease processes regulated by CR, e.g. mitochondrial dysfunction, obesity, glucose intolerance, inflammation, &beta;-amyloid, etc. Cluster analyses shows that resveratrol changes the expression of a large number of genes.

####Sirtuin

The genetic target of resveratrol is Sirtuin. However, not every gene is equally active in every tissue. Different sirtuin genes function in different ways in different places, so it would be better to more precisely target what we want to happen. Also, the gene target is not the same as the physical target, i.e. the compound may not directly bind the target protein. In HIPHOP the HIP will find the direct target and the HOP will find downstream effects.

Even in individual yeast cells, different Sirtuins are in different cellular locations, such as the mitochondria versus the nucleus or the cytoplasm. FOXO1, a transcription factor, is one of the many genes targeted by sirtuins.

Sirtuin activators, or STACs, work by allosteric mechanisms. Multiple generations of STACs have been developed, each more potent than previous.

To identify what amino acids are important in responding to the compounds, plasmids containing the gene are inserted into _E. coli_ and replicated. The activity of the resulting proteins is measured, and the mutations that have caused changes in activity are found and analysed. Other possible amino acid changes at the site identified are investigated and tested against the available drugs. Amino acid 230 has been found to be important, but is not in the core catalytic domain.

###Genetic analyses of TOR, UPR, and GH

TOR is in the CR pathway, UPR stands for Unfolded Protein Response, GH stands for Growth Hormone.

####TOR and Autophagy

Deletion of TOR1 increases lifespan, but what does that mean? TOR is related to autophagy,[^Autophagy] so why does knocking it out mean you live longer?

[^Autophagy]: Autophagy is a process where the cell eats its own components.

TOR is suppressed by caloric restriction, and is in that pathway. **These graphs are likely test questions.** The same pattern is seen from both tor1 deletion and caloric restriction in the wildtype. You can't tell from the graph whether tor1 is upstream or downstream of caloric restriction. In contrast, sch9 deletion does not have the same profile as CR, and indeed does better without it, so isn't in the same pathway.

Tor1 deletion increases the lifespan of FOB1 deletion, meaning that they are in different pathways (synergistic result).

Macroautophagy is the engulfment of cytoplasmic cargo in autophagosomes. Autophagy is a common target of disease treatment because stuff tends to fail to be broken down and become toxic. Autophagosomes engulf cellular material e.g. mitochondria and become "mature", then fuse with a lysosome. Several ageing pathways lead to macroautophagy.

TOR is a negative regulator of autophagy, and its inactivation leads to promotion of autophagy. The induction of autophagy is a therapy for neurodegnerative disease, as it clears aggregate proteins and reduces susceptibility to apoptosis.

####Proteostasis

This is notion of a perfect balance between the degradation and production of protein. An imbalance can be caused by the failure to properly degrade proteins. As an organism ages proteostasis declines for this reason.

Transcription and translation creates unfolded protein. The protein can be folded or become unfolded, both in a correct and incorrect manner and by different means, and can also aggregate and disaggregate. Further, misfolded or agregated proteins can be degraded, as can unfolded protein. The balance between all of these cause proteostasis.

Requirements for proper folding:

* The amino acid sequence
* The right cellular environment
* The perfect balance between the various folding states
* A fully functional protein quality control (PQC) system

Diseases caused by protein misfolding:

* The protein fails to fold correctly
* The protein is not stable enough to perform its normal function
* The protein fails to be correctly trafficked
* The protein forms insoluble, toxic aggregates

Changes in cellular conditions lead to more misfolded proteins, overwhelming the PQC system and causing aggregation to be favoured. Loss of function pathogenesis comes from misfolded proteins being prematurely degraded, leading to protein deficiency. Gain of function pathogenesis is caused by the failure to eliminate misfolded proteins and their accumulation.

Molecular chaperones are another means to deal with unfolded proteins. An example is Heat Shock Protein (HSP).

Main chaperone functions:

1. Chaperone assisted folding
2. Chaperone assisted disaggregation
3. Chaperone assisted refolding

####Unfolded protein response (UPR)

UPR is a mechanism to activate chaperones. IRE1 binds to unfolded proteins in the ER, where most membrane proteins fold. This causes XBP1 mRNA to be spliced, creating a ligase which activates UPR and associated chaperones. If the mRNA is _not_ spliced it forms XBPlu, which inhibits transcription instead.

A genome-wide screen identifies various functional groups of genes that perturb UPR. One fluorescent marker (green) marked UPR response. The other (red) was a marker for the cell. The ratio of the green and red gives a measurement of how important the gene knocked out is to UPR.

####GH and FOXO

There is an (inverse?) correlation between lifespan and size in certain mouse mutations. GH comes from the pituitary gland, and there is a dramatic decline with age. Serum IGF-I (insulin growth factor) levels also decrease with age in healthy women and men. Human Growth Hormone is a performance-enhancing drug (conveniently not tested for in American Football), but there is a potential anti-ageing benefit as well.

Insulin and growth factors regulate (inhibit) FOXO transcription factor. FOXO leads to cell cycle arrest, stress resistance, and apoptosis. Growth factors therefore lead to cell proliferation, stress sensitivity, and cell survival. The diverse functions of FOXO regulate several causes of ageing.

###SENS

The term Strategies for Engineered Negligible Senescence (SENS) was coined by Dr Aubrey de Grey[^deGrey] in 2002, but "Engineered Negligible Senescence" was first mentioned by him in 1999 in _The Mitochondrial Free Radical_. "Negligible Senescence"&mdash;referring to organisms which age at a negligible level&mdash;was coined by Caleb Finch in the early 1990s. Certain animals such as the lobster have negligible senescence, and so SENS effectively asks why this can't be extended to people.

[^deGrey]: "The man with the big beard" according to question four of the 2013 exam, Aubrey de Grey is a TED talk guy with an undergraduate degree in Computer Science and a Ph.D. in biology. He is the editor of _Rejuvenation Research_ and has been interviewed on the _Skeptics Guide to the Universe_. He may or may not be a crank.

SENS claims to be "goal-driven," i.e. seeking not to understand the theoretical underpinnings of aging, but simply identifying damage and inventing a method to fix them.[^goaldrivenSENS] The damage is supposed to divide into seven different types, each of which require a different "strategy" or method to cure.[^SevenSENSexam] Some of these methods are known and tested, albeit not publicly available, while others are pie-in-the-sky.

[^goaldrivenSENS]: However, SENS relies in part on the Free Radical Theory of Aging, and therefore can be said to require theoretical basis.

[^SevenSENSexam]: Both the 2013 and 2014 exams, but not the 2015 exam, have a question of the style: "Identify and rationalise five of the seven Strategies for Engineered Negligible Senescence (SENS) as proposed by Aubrey de Grey."

####The Seven Strategies

The idea with SENS is to find a method of reversing each of the following types of damage:[^SENSlist]

[^SENSlist]: From [_A Reimagined Research Strategy for Aging_](http://www.sens.org/research/introduction-to-sens-research), an article on their website.

1. Cell loss and tissue atrophy
2. Cancer
3. Mitochondrial mutations
4. Death-resistant cells
5. Extracellular matrix stiffening
6. Extracellular aggregates
7. Intracellular aggregates

Potential techniques are proposed for each case.

####Mitochondrial damage

In _Ending Ageing_ de Grey spends a fair bit of time on the "Mitochondrial Free-Radical Theory of Ageing." He observes that under normal circumstances the electrons in the electron transport chain are added to oxygen to produce water, but that sometimes this process is "fumbled" and produce free radicals, i.e. oxygen atoms with unstable amounts of electrons that can produce substantial and unpredictable damage to nearby molecules via redox reactions; the metaphor of a leaking nuclear reactor is often used.

This process has long been thought to be a major contributor to ageing, e.g. by creating a cascade of mutations that makes the mitochondria more and more vulnerable to free radical damage, but de Grey rubbishes this idea. He observes that instead of wide-spread degeneration of mitochondria with age, only about 1% of cells have defective mitochondria within them. At the same time, however, it is quite rare for these 1% to have any less than a total absence of functional mitochondria. This is to say that at a given moment all the mitochondria in a given cell are most likely to be functional, and that failing this all of them will be non-functional. Furthermore, the disabling mutations in the broken mitochondria in a given cell are almost always the same, but differ between cells.

The obvious conclusion that can be drawn from this is that after becoming mutated and disabled the broken mitochondria nevertheless managed to rapidly out compete their functional sisters. De Grey points to a flaw in the mechanism via which the cell detects malfunctioning mitochondria: it relies on detected damage to the membrane by free radicals, and not internal DNA damage. Therefore if a free radical mutates a critical sequence in the production of the electron transport chain proteins and disables the chain completely, and in the process preventing the further creation of free radicals and damage to the mitochondrion, it will gain a massive selective advantage over its functional sisters within the cell. A mitochondrion disabled in this way will almost certainly not be targeted by the lysosome for destruction, unlike a functional one, and so will relatively proliferate and drive the others to extinction. Of note, this mechanism results in the _reduction_ of free radicals produced by the mitochondria, and not an increase. Furthermore, no vicious spiral is invoked, merely the well-understood processes of natural selection.[^NSMito]

[^NSMito]: The key point to realise is that selection is acting on the mitochondria, not the cell or the organism as a whole, and so even though the mutations that disable them may appear deleterious to the organism they benefit the mitochondrion.

The mechanism that de Grey proposes for damage to the organism as a whole is more subtle. The 1% of cells unable to produce sufficient ATP in this way are not enough to take down the organism just by this feature, while the cells are able to survive on the limited energy supply of glycolysis. In order to do this the TCA[^TCA] cycle is up-regulated, despite no longer feeding to the electron transport chain, allowing more glycolysis to take place. This produces a build-up of NADH, which cannot be converted back to NAD<sup>+</sup> via the normal means due to the electron transport chain breakdown, and which has other uses in the cell. Instead the cell expels the extra electrons with a surface protein, which leads to a build-up of free radicals in the immediate neighbourhood of the cell.

[^TCA]: Or Krebs or Citric Acid cycle, or whatever else it's called.

Free radicals do not usually travel far, and so generally this would just damage the outsides of neighbouring cells, but instead they sometimes attack passing LDLs[^LDLs] which can travel great distances before continuing the chain reaction. De Grey says that he doesn't think this explanation is particularly elegant, but I personally disagree.

[^LDLs]: Low Density Lipoproteins, aka "Bad Cholesterol."

Despite all this, de Grey contends that the mechanism by which mitochondrial damage contributes to aging is irrelevant, and that what is important is "engineering" a system to fix it. He compares the nucleus to a "bomb shelter" where mutations are far less common than in the mitochondrial "leaking reactor." He proposes copying the DNA remaining in the mitochondria, translating it into the dialect used in vertebrate nuclear genomes (which is slightly different[^VMitodiff]) and modifying the proteins to be able to be transported back into the mitochondrion via the TIM/TOM system, a process which has been undertaken by evolution on most mitochondrial proteins already including some in other organisms that have not been translocated in humans.

[^VMitodiff]: The key differences between the vertebrate nuclear and mitochondrial codon/amino acid table are:

	* AGA and AGG are stop codons in mitochondria, but not in the nuclear genome.
	* UGA is not a stop codon in mitochondria, but instead codes for tryptophan.
	* AUA codes for methionine in mitochondria, instead of isoleucine as in the nuclear genome.

Aside from the dialect translation issue, which de Grey considers relatively trivial, the major problem relates to hydrophobicity: the proteins whose genes have not been translocated into the nucleus in any organism tend to be the most hydrophobic, and therefore hardest to transport through the mitochondrial membranes. The methods proposed to overcome this obstacle range from selective mutations to gain a functional but more co-operative product, to cutting up the proteins and reassembling them on the other side via a mechanism that the cell already uses in other cases.

On the basis of tests in other organisms where these things are more possible, de Grey is not concerned about the possibility that excess production of the proteins (from two sources) will have a negative impact on cells with still-functioning mitochondria, but he does express worry over whether the increase in traffic will clog up the membrane transport systems. In particular, proteins modified to fit still tend to transport relatively inefficiently compared to their already evolved comparisons.

Perhaps most critically, the proposed cure here relies upon the prior creation and perfection of _gene therapy_ in humans. This is by no means gauranteed and research to this point has been fraught, though some progress has been made. It is one thing to insert a gene into a single-celled eukaryote, and quite another to insert the same gene into every cell in an adult human. De Grey does not seem to be concerned, however, noting that gene therapy is being developed to treat other conditions beyond ageing, and simply assumes that they will succeed.This seem optimistic, to say the least.

Alternative solutions suggested involve transporting the entire mitochondrial genome into the nucleus, or using genes which code for proteins that&mdash;while able to run the electron transport chain&mdash;do not pump proteins. This would lead to the continued production of free radicals after mutations to the mitochondrial genome, removing the immunity to lysosomes, but potentially reducing the production of ATP in all cells.[^ATPproduc]

[^ATPproduc]: That is to say, not just in the 1% that wind up with mutated mitochondria. Needless to say, the effect of this is unknown but probably not positive.

####Intracellular rubbish build-up

De Grey observes that lysosomes are not sufficient to clean up all of the intracellular rubbish as the body ages, and proposes a solution.

The idea boils down to the lysosome not containing all of the enzymes it needs to break down accumulated detritus. While the lysosome has evolved a full complement for normal use, misfolded and crosslinked detritus (which can be simulated by bombarding mitochondria with UV light) builds up and cannot be hydrolysed by those proteins. This is called (in some fields) "lipofuscin" and fluoresces red.

On the basis that graveyards generally do not fluoresce in this way, he hypothesised that soil bacteria and/or fungi must possess enzymes that are in some way capable of this. This proved correct in the test tube, at least to some extent.

The problem then lies primarily with getting these proteins into the lysosomes. Techniques already exist with people who outright lack "normal" lysosome enzymes, particularly injecting them into the body with targeting to the lysosome. This provokes an immune response, but apparently it goes away.

Other techniques, including gene therapy and distributing engineered cells throughout the body that produce the enzymes continuously at low levels, are also raised.

This issue is related to atherosclerosis (the build up of cholesterol in arteries) as the macrophages that take in the cholesterol are unable to process it in certain conditions, along with Alzheimer's.

##Population genetics

Transitioning on from ageing genetics. Started 18 March, but a gap during Melanie's lectures? Alternatively, this could be it.

The population is the basic unit of molecular evolution. The genotype of an individual is essentially fixed at birth&mdash; the _population_ is the smallest unit where evolutionary change can occur. Population genetics refers to the study of evolution via the observation and modelling of allele frequencies and genetic change in populations of organisms.

There are three parameters to keep in mind:

* Allele frequency
* Genotype frequency
* Phenotype frequency

###Hardy-Weinberg Equilibrium

The situation in which no evolution is occuring&mdash;it is a genetic equilibrium. It was the solution to a nineteenth century misconception that dominance and recessiveness of an allele alone could cause evolutionary change (it doesn't). The H-W Eq refers to a particular locus: one locus may be undergoing rapid allele frequency change, while other loci is in equilibrium.

The five requirements:

1. Infinite population size
2. No allele flow
3. No mutation
4. Random mating
5. No selection

When gametes containing either of two alleles, A or a, unite at random to form the next generation, the genotype frequencies among the zygotes are given by the ratio p<sup>2</sup> + 2pq + q<sup>2</sup> = 1. p + q also equals 1.

###Molecular evolution

Molecular evolution is a "biomarker of ageing"&mdash;organisms that live longer tend to have a lower molecular evolutionary rate.

_The rate of sequence evolution = the fraction of sites that undergo a change in some designated time interval = number of replacements per site per billion years._

The rates of evolution can differ dramatically from one protein to another. There is an important distinction between synonymous vs nonsynonymous substitution.

####Main causes of molecular evolution

1. Selection
2. Migration
3. Mutation
4. Genetic drift

####Theories of molecular evolution

* Selectionist
* Nearly neutral

####Pop gen markers

Sequencing the entire genome is still expensive, but there are specific markers used that are cheaper and easier:

* Alu is the short (280 bp) SINE retrotransposon. It is very common in the human genome (around 300,000 copies) and shows extensive variation in terms of insertion events.
* Simple Tandem Repeats (STRs) or microsatellite DNA, are single locus DNA elements composed of between 1-6 bases repeated in tandem. For example CACACACA or GAGGAGGAGGAGGAGGAG. The number of repeats changes between populations.
* Single Nucleotide Polymorphisms (SNPs) are single base pair mutations and almost all common SNPs have only two alleles. SNPs account for about 90% of the genetic variation between humans.
* Copy-Number Variants (CNVs) are a segment of DNA in which copy-numer is polymorphic. Humans ordinarily have two copies of each autosomal region, but this may vary.

###Mutations

The ultimate source of genetic variation. Most are neutral, some are harmful, some are beneficial. Mutations at a typical locus happen about once every million gametes. The cumulative effects of mutations are considerable, however.

Mutations are random events, occuring independently of their selective value.

####Types of mutations:

* Point mutations are changes in one or a few nucleotides
	* Substitution
	* Insertion
	* Deletion
* Frameshift mutations are the consequence of insertion and deletions that are not in groups of three
* Synonymous substitution: where one nucleotide is substituted for another that does not result in a change in the encoded amino acid sequence. These happen more frequently
* Nonsynonymous substitution is rarer

####F<sub>ST</sub> test

The fixation index. Used to measure the amount of non-random mating among subpopulations S within the total population T: Population sub-division leads to increased homozygosity, and inbreeding within subpopulations also increases homozygosity.

<em>F<sub>ST</sub> = (HT - HS) / HT</em>

High levels of gene flow mean low values of F<sub>ST</sub>

####Variation distribution

The vast majority of variation is not suitable for distinguising between groups, e.g. 90% or 80%. It is very rare to find variation at one locus that is completely absent from a particular people group. You need a lot of SNPs to properly distinguish populations.

Genome-wide association studies (GWAS) relate genotype and phenotype.

###Selection

The three types of selection:

* Positive, or directional
* Balancing
* Negative, or purifying

Compare with neutral drift, where allele change to fixation is a slow process in a large population.

####Natural selection and linked alleles

* Selective sweep: where an advantageous mutation quickly reaches fixation, dramatically reducing all previous polymorphisms in a region of the genome
* Genetic hitchhiking: closely linked neutral or deleterious mutations will increase in frequency with a favourable mutation
* Purifying selection: selection against deleterious mutations removed closely linked neutral mutations

####The five signatures of natural selection

**Potential essay question.**

* &uarr; Proportion of functional changes: detectable over millions of years.
* &darr; Heterozygosity/rare alleles: detectable over hundreds of thousands of years.
* &uarr; Frequency derived alleles
* Population difference
* Length of haplotype

####K<sub>a</sub>/K<sub>s</sub> test

K<sub>a</sub> is the rate of non-synonymous mutations, K<sub>s</sub> is the opposite. You compare ratios of different lineages (species) to detect the signature of selection.

* K<sub>a</sub>/K<sub>s</sub> &lt; 1 means that mutations evolve by drift and negative selection
* K<sub>a</sub>/K<sub>s</sub> = 1 means mutations are neutral
* K<sub>a</sub>/K<sub>s</sub> &gt; 1 means that mutations evolve by positive selection

####Long haplotypes

Large regions of low diversity that suggest that the alleles on it arose recently and together.

###Genetic Drift and Migration

Genetic drift is the random sampling of gametes. Random fluctuations in allele frequencies, stronger in smaller populations.

Migration is the movement of alleles between populations. This has little impact on the origin population, but can rapidly change allele frequencies in the destination population (especially if it is small).

####The international Haplotype Map Project

Aims to develop a haplotype map (HapMap) of the human genome. The HapMap will describe the common patterns of human DNA sequence variation.

Phase I HapMap sampled 600,000 SNPs in 270 individuals from three populations. They evaluated patterns of linkage disequilibrium etc.

A haplotype, or haploid genotype, is a combination of alleles at two or more loci that are transmitted together on the same chromosome. It can also mean a set of SNPs on a single chromatid that are statically associated. Tag SNPs can be found that are representative of a haplotype, meaning that the rest of the SNPs on the haplotype can be assumed to be in a certain state if the tag SNP is. This means that if resources are limited only the tag SNP needs to be sequenced. Tag SNPs can resolve entire populations. New haplotypes are created by recombination.

###Linkage disequilibrium

This is the non-random association of alleles at linked loci, and **will be on the test**. I.e. the frequency of allele A with respect to a, f(A), multiplied with the frequency f(B), is not equal to f(AB). In linkage, distance reflects time. This is because over a given time more crossovers will occur between loci located further apart.

LD is a balance between recombination and other forces. Recombination is the only force that breaks down LD, producing more diversity in an older population.

##Epigenetics

First section of Melanie's stuff, starting 4/4. There is no textbook, because it's too new&mdash;instead, she has provided a bunch of online resources.

###What is epigenetics

E.g. what happens to the father has an impact on children&mdash;changes in environment change gene expression.

* Rat grandchildren of nicotine exposure more likely to have astma
* Rat children of cocaine addiction less likely to become addicted
* Foraging vs nursing bees reversibly controllable by epigenetic changes

####Pseudo-science and epigenetics

"How your mind controls your genes," _etc_. The idea that epigenetics is when you "turn your genes on and off by the lifestyle," and so you can change gene expression consciously and stop ageing.

####"What epigenetics is"

* Changes in gene expression&mdash;modifying gene expression
* Environmentally induced changed to accessibility of the genome
* Can't change the sequence

####DNA packing

2 metres of DNA are packed into a cell of 10&mu;m cell, wrapped around histones.

###DNA methylation

Easier to measure than histone modification. In mammals etc you're usually talking about 5&prime; methyl cytosine, the 5th base of DNA. It's traditionally associated with "closed" DNA. In bacteria adenine is methylated, and within the last month or so it has been found in _C. elegans_ and mammals.[^adeninevertebrates]

[^adeninevertebrates]: Probably associated with silencing LINEs and similar.

Methylation patterns:

* mCG (plants)
* mCHG (plants)
* mGHH (plants)

Clusters:

* CpG islands
* Repeat sequences

Often associated with transposable elements. If centromere is not methylated the chromosomes will fail to separate and instead will fall apart. Telomeres also require methylation. Transcription start sites can be methylated to control expression.

Methylation is catalysed by DNA Methyltransferase (DNMT). SAM is a methyl donor and is transformed into SAH.

####Importance

Cancer cells lose methylation&mdash;hypomethylation. There is also increased methylation at the promoters of known cancer genes. This leads to increased genomic instability and the suppression of tumour suppressants.

####Control

Methylation is controlled by DNMTs. DNMT1 maintains methylation during cell division, DNMT3 creates methylation _de novo_. DNMT2 does not seem to exist.

It was once thought that methylation could only be lost by replication without replacing methyl groups, which doesn't make a lot of sense in hindsight. Active de-methylation can be performed by oxidation of the methyl group (though this leaves something there, the function of which is still under investigation), or deamination of mC to T, then base excision or nucleotide excision repair.

DNA methylation is paralleled by loss of acetylated histones. There is a relation between DNMT and HDAC[^HDAC] enzymes.

[^HDAC]: Histone deacetylase. There are about 18.

####Epigenetic enzymes

DNA Methyltransferase is the DNA methyl writer, the Acetyl writer is Histone acetyltransferase, the acetyl eraser is the Histone deacetylase. 

###Histones

Gene expression is the balance between acetylation and deacetylation. Acetylation occurs on lysine amino acids on the tail,[^HistoneTail] with some serine and some arginine. There are far more potential signals than enzymes, so it's not immediately obvious how it's being directed&mdash;it turns out to be histone methylation.

[^HistoneTail]: Actually the first amino acids to be translated.

####Histone methylation

**Histone methylation can be both active and repressive, depending on the mark.**

There are known to be more than 100 histone methyltransferase proteins (methyl writers). More than 40 histone demethylase proteins are currently known (erasers). The enzymes are specific for a given methyl modification.

Methylation of histones is a switch that sets a chain of events in motion, but the end result depends on what histone was methylated. To open chromatin you need a permissive methylation mark written, which acetlyates histones and leads to no DNA methylation. To close chromatin you need a repressive methylation mark, leading to deacetylation of histones and methylation of DNA.

####Opening chromatin

1. A permissive HMT[^HMTTrithorax] writes an 'open' methylation mark
2. Any repressive marks are erased by histone demethylase
3. A methyl reader protein recognises and binds to H3K4-me open mark and invites HAT to the party
4. HAT acetylates histones and loosens the chromatin

[^HMTTrithorax]: HMT = Trithorax. It methylates Histone 3 Lysine 4 (H3K4me)

####Closing chromatin

1. A repressive HMT[^RepressiveHMT] writes a close methylation mark
2. Any open marks are erased
3. A methyl reader protein recognises and binds to H3K9-me close mark, inviting HDAC and DNMT to the party
4. HDAC deacetylates histone and tightens chromatin
5. DNMT methylates the DNA
6. HP1 cements the chromatin closed

####Key histone modifications

H3K4-methyl means transcription on. First the signal activates H3K4-methyl writer and it is methylated. H3K4-methyl reader recognises, binds, and recruits HAT. HAT acetylates lysines, the acetyl reader recognises this, binds and recruits RNA polymerase. Transcription then proceeds

H3K27 methyl means transcription **off**. First, the signal activates the H3K27 methyl writer. Then the H3K27 methyl reader recognises, binds, and recruits HDAC. HDAC deacetylates lysines. The deacetlated K recruits HP1. HP1 recruits DNMT, methylates DNA. Transcription is then silenced.

####Reading histone modification.

Bromodomains read acetlyated lysines, while Chromodomains read methylated lysines.

Bromodomains turn on gene expression, openining up the chromatin.

Chromodomains read methylated lysines, and may turn gene expression on or off depending on which methylated amino acid it is.

###The essence of epigenetics

* Regulate access to DNA by controlling chromatin structure
* Signal to open chromatin comes to HMT writer, whic methylates specific amino acid on histone tail
* Chain of events set into motion&mdash;the acetylation or deactylation of histone tail, resulting in the compaction and methylation of DNA _or_ open, accessible DNA.

###The histone code

Many modifications can be found on histone tails. Combinations of modifications on nearby histones specify whether a locus has:

* Acetylated histones and unmethylated DNA
* Deacetylated histones and methylated DNA
* A combination of both

This controls whether a locus is:

* Actively transcribed
* Ready to be transcribed&mdash;poised or bivalent
* silent

Embryonic stem cells tend to be in a poised state for the genes that would send them down a certain pathway. A fully committed cell would have early embryonic genes repressed, the genes from its own cell type activated, and genes from other cell pathways repressed.

####Other histone modifications

Lysines can also be ubiquitated, biotinalated, and SUMOylated. Arganine can be citrullinated. Proline can undergo cis-trans isomerisation. And so on&hellip;

Lysine (K) can be methylated up to 3 times, while arginine (R) can be mono- or di-methylated

####Activation and repression complexes

The activation complex is MLL, interacting with HAT. The repression complex is EZH2, interacting with HDAC.

####Epi-mutations

An epi-mutation is an abnormal gene expression due to altered chromatin structure. They are very common. Mostly they happen because an enzyme has gone wrong. They are heritable.

###Other epigenetic regulatory mechanisms

####Heterocromatin spreading

Heterochromatin remodelling: To achieve histone modification and DNA methylation you need to physically move the nuceosomes around. A series of enzymes with bromodomains, recognising acetalysed histones, do the heavy lifiting. (Bromodomains on proteins are very common.)

Heterochromatin is contageous: Once the HDAC/DNMT/HP1 complex is active, it gets on a roll and just keeps on going. More spillover than contageous, really. Deactivation complexes can also spill over. Chromatin insulators act as a barrier to stop heterochromatin spreading. Maintinence of insulators protects an active locus from heterochromatin. These sequences lack histones entirely, preventing spread.

####Postion effect variegation

This is the inactivation of a gene in some cells through it's abnormal juxtaposition with heterochromatin. E.g. an inversion in _Drosophilia_ can lead to a gene that would not normally by near a patch of heterochromatin is now next to it, and spillage can silence silence that gene in some cells.

####Genomic imprinting

This is the expression of one allele of a gene only, using DNA methylation and insulator sequences to suppress only one. Commonly in growth factors. This allows dosage control and explains parent of origin effects, and is unique to mammals and flowering plants (so far as we know at the moment).

Usually the maternal allele that will turn off the growth factor, potentially a way of controlling the size of offspring. If this "genetic conflict" hypothethis is true, it might be expected that monotremes and marsupials would lack this, and sharks (which also give birth to live young) would also have imprinting.

Ligers (lion father) are much bigger than tigons, which presumably has some relation to this.

In humans, imprinting is required for normal development. DNA from cells of people with autism, bipolar, schizoprenia, diabetes, cancer, and obesity all have altered DNA methylation compared to DNA from non-affected genes. Stress also appears to alter epigenetic marks.

###Studying epigenetic modifications

Some enzymes are enzyme sensitive, and if they are restriction enzymes and their site is blocked by methylation you can use this to determine if the sequence is methylated.

Bisulfite treatment differentiates cytosine and methylcytosine. Unmethylated cytosine reacts and deaminates to uracil, broadly equivalent to T, while methylated cytosine will be unchanged.

Methyl DNA immunoprecipitation (meDIP) has less resolution. It uses array hybridisation or high-throughput sequencing.

Chromatin immunoprecipitation (ChiP)

##Cancer genomes and genome analysis

Cancer is the ultimate genetic disease (according to Melanie; she has a point though).

###What is cancer

A change that happens to a cell that makes it proliferate when it should not. The normal processes controlling cell behaviour are loss. This is driven by genetic and epigenetic changes.

It is the most common human genetic disease, the leading cause of death in NZ (ahead of heart disease). It has an incidence of around 1:3 in western countries.

We can say that cancer is a genetic disease because:

* The progeny of cancer cells are cancer cells&mdash;it's an inherited property
* Most carcinogens are mutagens
* Cancer cells have chromosomal and DNA abnormalities
* Some cancers are inherited and run in families

Cancer is a multi-factorial disease:

* Genetic
* Environmental
* Medical
* Lifestyle

###Mutations in cancer

Inherited mutations are _germline_, acquired mutations are _somatic_. 90% of cancers are caused by somatic mutations, 20% by germline mutations. The 10% overlap show both somatic and germline mutations.

####How do mutations arise

Mistakes:

* Replication
* Repair
* Recombination
* Mitosis
* Meiosis
* Transposon activation&mdash;this belongs in both lists, arguably

Mutagens:

* Radiation
	* UV
* Reactive oxygen (ROX)
* Asbestos&mdash;inflammation
* Viruses
* Heavy metals
* Metabolism&mdash;toxic products

####What kind of mutations arise?

Genetic changes in cancer can include:

* Indels
* Substitutions
* Silent changes
* Inversions
* Thymine dimers
* Epimutations&mdash;changes in chromatin structure
* Double-stranded breaks, single stranded breaks
* Chromosomal abnormalities
* Deamination, depurination
* Nicks to backbone
* Mitochondrial mutations
* Splicing mutations

####What do these mutations do?

**Example: Colorectal cancer**

They transform normal cells into malignant cells. It's a multi-step process. In the 1950's pathologists described series of intermediate steps from normal to pre-malignant to malignant. In the 1980's geneticists began describing the series of mutations that correspond with the pathologists' series.

Mutations occur randomly and frequenty. The effect of a mutation depends on the cell&mdash;can it be repaired, and is it expressed in the cell.

If a mutation enhances survival or proliferation will be passed on. Daughter cells can then accumulate more mutations, and there is an increased likelyhood of cancer. We know this is true because:

1. Cancer incidence increases with age
2. Heredity cancers occur earlier than sporadic cancers
3. Driver and passenger mutations

Childhood cancer is very rare. 1:600 children under 15 develop cancer, and childhood rates are highest in first 10 years. The rate rises significantly at around 50, and plateaus after 75 or so.

50% of the western population will develop benign CR tumour (an adenoma) by 70 years old, and about 1:10 will progress to malignant CR carcinoma. The average age of onset is 72 years.

However, 15% of CR show dominant inheritance. There are two syndromes.

In Familial Adenomatous Polyposis (FAP), 100,000s of polyps develop by 30s, most people progress to CRC. Every cell in the body has a germline mutation in APC gene, and a fraction of cells in the colon get another mutation. This leads to a head start in gaining the required mutations to go further. The averate age is 42 years&mdash;25-30 years early.

In Lynch Syndrome/Heridity Non Polyposis Colorectal Cancer (HNPCC) every cell has inherited a mutation in DNA mis-match repair genes, causing mutations to be rapidly acquired. The average age of onset is 42 years.

####Driver and passenger mutations

Initially, linkage analysis was used to map alleles in families, and specific known genes based on function.

More recently, larger-scale systematic sequencing projects look at entire cancer genomes, comparing to germline genomes and excluding known polymorphisms, then comparing multiple cancers. The mutations found can be examined for signature of selection (increased non-synonymous mutations).

Driver mutations are the ones being selected on, while passenger mutations are silent (synonymous).

####How mutations increase survival

Mutations can make cells insensitive to anti-growth signals, disrupting cell cycle checkpoints, allowing proliferation regardless of anti-growth signals. They also prevent differentiation. Cancer cells need to evade apoptosis, so tumour cells have mutations in the apoptosis sensors or effectors. Tumours need limitless replication, to be self-sufficient in growth signals, and invade tissues in metastatise.

####Genome-wide association studies

If we look at vast numbers of SNPs and do linkage analysis we can find specific alleles associated with cancer. Use a micro-array to to compare. They work best in cases of mendelian diseases.

An early GWAS on breast cancer looked at hundreds of thousands of SNPs, but narrowed down to two SNPs. One of which was a gene already known, and another was a locus in a gene desert.

GWAS is not overly useful for cancer.

####DNA copy number variation

If a region of DNA is missing or replicated without change in sequence, it will not be picked up by sequencing. However the traditional methods are labour intensive. Comparative genomic hybridisation is a faster method, but only picks up unbalanced changes.

It also turns out that GWAS data can be used to detect CNV by looking at _where_ the SNPs are physically.

####Epigenetics and cancer

Sometimes you can't find a mutation in a gene that you _know_ is involved in cancer and is doing something funny. But there is another level of gene function regulation&mdash;epigenetics.

####The cancer genome

The cancer genome is the collection of all the mutations in a given cancer. There are 100-100s of these, more in environmentally caused cancers than others. A mutation in this course is defined as something that changes the function of a protein.

###Cancer genes

Tumour suppressor gene mutations tend to be recessive, oncogene mutations dominant.

####Oncogenes

Proto-oncogenes are proteins that positively influence cell growth&mdash;accelerator. There is high evolutionary conservation across species as they regulate fundimental processes. A mutation to a proto-oncogene produces an oncogene, and alters but not removes the function of the protein. It increases the activity.

Point mutations to RAS prevents it from turing off. RAS stands for Retrovirus ASsociated genes. 30% of cancers have RAS mutations.

Increasing the copy number of MYC amplifies it.

Chromosomal translocation of BCR/Abl changes when and where the protein is expressed.

Epigenetic activation of IGF2 increases the dose.

#####Oncogene addiction

Oncogenes are relatively simple to target with drugs, _because they are needed to retain function_. BCR/ABL is a fusion protein that only exists in cancers, and was successfully targeted (for a while) to target cancer with few side effects. _However_, the cells that were not killed continued to mutate and acquired resistance to the drug within about five years. Further generations of drugs were made to combat each new resistance.

B-RAF is locked into an active conformation by substituting glutamic acid for valine at the 600 position. When melanoma loose this mutant protein they die via apoptosis.

Blocking just one oncogene, but preferably more, can seriously harm the cancer. But oncogenes return in a whack-a-mole fashion.

####Tumour supressor genes

These have recessive mutations. Proteins produced regulate the cell cycle, and if only one is knocked out it still functions.

Familial predisposition comes from a single copy being knocked out; the other being knocked out is required for cancer. When not inherited you need two mutations to get cancer.

Inherited mutations means an inherited predisposition, but you don't get tumours in every tissue.

Tissue specificity of BRCA1 is not immediately obvious &mdash; it is widely expressed, but inherited mutations only lead to breast and ovarian cancer. Somatic mutations will accumulate in BRCA1 genes in all tissues. This could be because:

* Redundancy: Most tisses have back-up mechanism for BRCA1, but breast and ovary do not. _But_ knocked out mice do not show a back-up effect
* Breast and ovary have high proliferation rates, therefore a higher mutation rate. _But_ colon also has high proliferation rate, no increase in colon cancer
* BRCA1 might regulate transcription of genes expressed only in breast and ovary
* BRCA1 might suppress activity of tumour suppressor found only in breast and ovary
* BRCA1 is essential and only breast and ovary have survival mechanism needed to survive loss of BRCA1. Supported by knock-out mouse data.

All tumour suppressors show some degree of tissue specificity. Identification of factors that allow survival of cells carrying the homozygosly deleted allele will be critical for successful treatment. These factors may not be produced by the cancer cell, but by the environment around the cell.

####Genetic vs epigenetic mutations

Mutations in E-cadherin can drive gastric and breast cancer. This can be both through a classical mutation or an epigenetic mutation. The effect of epigenetic silencing is the same as a classical mutation.

You can try to bring back alleles silenced by epimutations by epigenetic drugs. Only a single tumour supressor gene is needed to work. You can also try to _prevent_ the epigenetic mutation occuring.

To kill cancer cells with two classical mutations you can exploit synthetic lethality, finding a drug that inhibits another gene which is synthetically lethal with the mutated gene. E.g. BRCA1 pairs with Hr(?), a gene which repairs single strand breaks: if single strand and double strand breaks can't be fixed, and the cell is made to produce a lot of single strand breaks, the cell will die.

###Genomic instability

Normal cells are stable; malignant cells are not.

Instability is generated by chromosomal translocations, amplifications, chromosome segregation errors, telomere dysfunction, loss of DNA repair processes.

Instability can be random or non random. It gets caused by defects in caretaker genes, e.g. BRCA2.

###Parallels with ageing and cancer

* Incidence of cancer increases with age. It takes time to get mutations, and as you get older your genome gets less stable.
* Level of tissue damage influences rate of ageing and rate of cancer development
* Ageing tissues undergo molecular changes that parallel early carcinogenic changes, and prime these tissues to the effects of mutagens
* DNA damage theory of ageing vs cancer: mutations give survival advantage in cancer, but degrade in ageing

###Review

(Third of May)

####Genomic instability

Underlying process which we think drives a lot of changes. Chromosomal instability versus microsatellite instability.

Chromosomal instability is large scale chromosomal abnormalities, e.g. unequal distribution of DNA between daughter cells after division. It is caused by loss of caretaker gene function, errors in mitosis, activation of oncogenes, loss of double-strand break repair. In familial cancers, the biggest driver of chromosomal instability is loss of caretaker gene function (you cannot successfully inherit a mutated oncogene).

Microsatellite instability is the expansion or contraction of microsatellite repeats. Microsatellite instability is caused by DNA polymerase slippage during replication, and loss of mismatch repair. The mutator phenotype hypothesis says that increased mutation rate is required for the acquisition of all the mutations found in cancer genomes. They epigenetic version of the mutator phenotype consists of both widespread changes in DNA methylation and sets of genes that are silenced in parallel.

####Bivalent chromatin

Both permissive and repressive markers on a given bit of chromatin. Capable of going either way very rapidly.

##Next Generation Sequencing

Andrew again. Start 9/5

###Introduction to NGS

Technically we're in the world of "third generation sequencing," but most don't have access to that yet. The number of human genomes sequenced per year has increased exponentially. The speed of sequencing has increased extremely fast, from labour intensive processes in the 1980's to the present automated sequencing.

####In the beginning

DNA polymerase was first described in 1955 (though the paper was rejected and was only published in 1958). In the 70's and early 80's, the DNA was chemically treated in four different ways to then run on a gel. You only got 50 bases tops after a huge amount of work. In the 80's and 90's we radio labelled each base.

Then Sanger sequencing was created, using fluorescent di-deoxy sequencing. Sequences would be resolved on a gel or by an automated sequencing machine with a laser. The chemistry and technology only allowed a few hundred bases to be labelled in this way before you ran out of fluorescence. Gels were replaced with capillaries to reduce exposure to poly acrylamide gels. Regardless of method this was still shotgun sequencing with DNA fragments cloned into plasmids grown in bacteria.

####Next gen idea

Start with chromosomal DNA, shear DNA into small pieces of 200 to 500 nt. Add adaptors to fragment library, enrich and amplify library by PCR, and then sequence.

The essence:

* Library preparation
* Cluster generation
* Sequencing
* Alignment and data analysis

###Third generation

A variety of technologies, not yet much in use and with potentially high error rate, have been developed.

####SMRT

Single-molecule real-time sequencing. DNA polymerase is confined in a zero-mode waveguide. Base additions are measured with fluorescent detection of gamma-labelled phosphonucleotides.

####Oxford Nanopore

DNA is sequenced through a microscopic pore in a membrane. Bases are identified by the way each base affects ions flowing through the pore. This system does not require polymerase and allows extremely long reads.

####ZS genetics 3G

Still in its early stages, involves electron microscopy. You denature the DNA and label bases with heavy atoms, run PCR, and line it up on a glass slide. Then image with transmission electron microscopy (TEM). The slide holds static charge to hold the DNA in place.

###Exome sequencing

With next generation sequencing it still isn't all that feasible to sequence an entire genome. Instead we can sequence the exome, which is only a tiny portion of the genome but contains all protein coding genes (by definition). Something like 80% of disease-causing mutations are in the exome, which is 37 million bases long.

####Advantages

* Cost effective
* 85% pf disease-causing mutations are in exons
* Identifies non-synonymous variation
* Detects rare variants even at n = 1
* Amenable to parents-child trio analysis (e.g. determine inherited or _de novo_ mutations) or cancer-normal gene comparison
* Detects incomplete penetrance (identification of mutation that should or will cause disease but has not done yet).

####Sequence of events

* Start with ~3 million SNPs per individual
* Filter down to 15 to 20 thousand coding SNPs per individual
* Seven to 10 thousand non synonymous coding SNPs per individual
* Remove previously identified variants, leaving 200-500 novel non synonymous coding SNPs per individual
* Restrict to variants fitting dominant/recessive model of inheritance to find one or several putative genes

####Disadvantages

* If you're only looking at the exons you're not looking at the introns, or epigenetic changes, or structural changes, or copy-number variation etc
* No information on gene-gene interactions
* No accounting for uniparental disomy, i.e. inheriting both copies of a gene from the same parent which would show up as one copy from each parent
* No accounting for control sequences (e.g. gene silencing microRNAs in introns)

###The microbiome

The interaction between microbes and humans. We determine the species present by sequencing the 12S rRNA gene. Microbes have an important role in metabolism, particularly lose in the gut. Some argue that the microbiome is the "second genome," which has become the name of a company that sequences it.

The microbiome changes throughout life and depending on environment and disease.

###Transcriptomes and methylomics

The transcriptome is the set of all transcripts in any given cell, all products of the transcriptional machinery. It only includes the RNA that is being transcribed, as opposed to all _potential_ transcripts. The transcriptome is thus different from exome sequencing. Typically trying to analyse differential gene expression.

####qRT-PCR

Quantitative real-time PCR measures specific gene expression starting from cDNA made from RNA. You measure the expression level from the point at which the amplification crosses a threshold, normalised to a housekeeping gene (or some other gene that does not change from your treatment).

####RNA-seq

RNA-seq is the process of sequencing the transcriptome. RNA-seq replaced transcriptional microarrays.

RNA-seq allows you to determine differential gene expression (quantitative) and do transcriptome assembly (qualitative).

* First, you need to remove the DNA from the RNA sample.
* Fragment RNA
* Reverse transcribe to cDNA
* Ligate sequence adaptors
* PCR amplification
* Select a range of sizes
* Sequence cDNA ends
* Remove artefacts from raw reads
* Correct errors
* Assemble into transcripts
* Post-process transcripts
* Align reads to transcripts to quantify expression

####Approaches to transcriptome assembly

Reference-based assembly versus _de novo_ assembly: Align then assemble versus assemble then align. Some elements of both may be needed to include all reads.

####Methylome

Methylation is the addition of a methyl group to cytosine, which can be deaminated to thymine.

Can use a pair of restriction enzymes that cut at the same spot but respond differently to methylation.

Bisulphite sequencing generates methylation-specific SNPs. An unmethylated cytosine is converted to uracil and PCR amplifications recognises uracil as thymine.

###QTLs and QTNs

QTL: Quantitative Trait Loci.

Most traits including diseases are complex or polygenic&mdash;i.e. a function of many contributing genes. A simple formula to calculate the genetic and environmental regulation of a quantatative trait is Y = X + e.

A Quantatative Trait Loci is a genes(s) or chromosomal region(s) that affects variation of a quantitative trait; this can be one or more QTLs.

##GAT1

Lab partners: Britt and Pania

###Part 6

1. Our gene is GAT1
2. Our analysis from practical 1 showed that GAT1 deletion leads to an _increase_ in longevity.

    Growth curve:

    ![GAT1 Growth Curve](GAT1.png)

    Day 13 growth curves highlighting GAT1:

    ![Day 13 growth curve highlighting GAT1](Day_13_growth_highlighting_GAT1.png)

    By later days GAT1 has one of the highest growth curves and lowest time shifts of all strains. It's survival integral is second-highest after BRO1 and statistically different from its mother strain at _p &lt; 0.01_.

3. Systematic name: YFL021W (do not confuse with GPT2 / YKR067W.)

    [Yeastgenome.org link](http://www.yeastgenome.org/locus/S000001873/overview); [Yeastgenome.org interactions link](http://www.yeastgenome.org/locus/S000001873/interaction); [Human analogue&mdash;SLC6A1 gene](http://www.ncbi.nlm.nih.gov/gene/6529)

    Interesting papers:

    * [Development of Highly Potent GAT1 Inhibitors: Synthesis of Nipecotic Acid Derivatives by Suzuki-Miyaura Cross-Coupling Reactions](http://dx.doi.org/10.1002/cmdc.201500490)
    * [Different Binding Modes of Small and Large Binders of GAT1](http://dx.doi.org/10.1002/cmdc.201500534)
    * [The transporter GAT1 plays an important role in GABA-mediated carbon-nitrogen interactions in Arabidopsis](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4586413/)
    * [Loss of the TOR Kinase Tor2 Mimics Nitrogen Starvation and Activates the Sexual Development Pathway in Fission Yeast](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1899950/) (does not mention GAT1)
    * [Tripartite regulation of Gln3p by TOR, Ure2p, and phosphatases.](http://www.jbc.org/content/275/46/35727.long)
    * [Nitrogen Catabolite Repression-Sensitive Transcription as a Readout of Tor Pathway Regulation: The Genetic Background, Reporter Gene and GATA Factor Assayed Determine the Outcomes](http://www.genetics.org/content/181/3/861)

4. The gene activates nitrogen catabolite repressor genes. That is to say, when the gene is on nitrogen catabolism is off, so there is more nitrogen around. Further, a lack of nitrogen turns the gene on. The gene being removed causes nitrogen to be catabolised even when it should not, leading to a lack of nitrogen. This causes nitrogen starvation even in situations where it should not occur, leading to an increase in autophagy and associated longevity.

5. The human ortholog is encoded by the SLC6A1 gene.

6. [DGAT1](http://genomics.senescence.info/genes/details.php?gene=Dgat1&organism=musculus) in mice is an anti-longevity gene in mice, with a homolog in humans, but is it related to GAT1 in yeast?

    GAT1 has a physical interaction with TOR1. (See [_Tripartite regulation of Gln3p by TOR&hellip;_](http://www.yeastgenome.org/reference/S000051382/overview))

7. GAT1 is associated with the nitrogen starvation pathway, which increases longevity by increasing autophagy and cleaning up cellular detritus.

8. ?

###My script

(Experimental designs.)

We designed several experiments with which to test our model.

####Yeast 2-Hybrid

One of the key elements of our model is that TOR1 physically interacts with GAT1 to phosphorylate it and prevent it from entering the nucleus. Using Yeast 2-Hybrid (Y2H) we can test whether TOR1 and GAT1 physically interact at all.

We would attach a GAL4 binding domain to GAT1, and a GAL4 activation domain to TOR1. An Upstream Activation Sequence (UAS) that GAL4 binds to would be placed upstream of a reporter gene such as Green Fluorescence Protein (GFP). If the two proteins of interest physically interact we would expect to see transcription of GFP and the associated fluorescence. If we do not, our model is unlikely to be correct.

####Nitrogen sources

GAT1 is involved in nitrogen sensing, and so its behaviour in the wildtype ought to differ depending on the quality of nitrogen present. We would effectively run the experiment again while controlling nitrogen conditions and measuring nitrogen metabolism.

If our model is true we should expect that there is a difference between wildtype and &Delta;GAT1 nitrogen metabolism when good nitrogen is present, but not when only poor nitrogen is present. This is because &Delta;GAT1 cannot sense nitrogen levels properly, and is effectively locked into the response that it would have under poor nitrogen conditions.

Our model also says that this change in nitrogen metabolism under good nitrogen conditions translates to the increased longevity seen in the original experiment, and assumes that there were good nitrogen sources in the origin experimental medium.

Carefully controlling the nitrogen sources used in the media is important in subsequent experiments.

####Deletions

We have already compared &Delta;GAT1 with the wildtype BY4743, but there are other deletion options to investigate:

We would expect that &Delta;GAT1 + &Delta;GLN3 should produce a similar but more substantial phenotype than &Delta;GAT1 alone, in a "the whole is less than the sum of the parts" fashion.

We would expect that &Delta;TOR1 would act in the opposite direction relative to the previous deletions, locking in the response to good nitrogen even where the nitrogen sources are all bad. However, complicating this, &Delta;TOR1 is known to _increase_ both chronological and replicative lifespan&mdash;presumably due to its effects on other pathways e.g. Caloric Restriction.

####Chemical genetics

To do chemical genetics experiments we would first need to find a drug that interacts with GAT1 in the first place. To do this we would throw a bunch of drugs at a heterozygous &Delta;GAT1 mutant and select all those with a significant fitness difference from the wildtype. Controlling nitrogen levels is important in this experiment, and it may need to be run under both conditions.

####HIP-HOP

We would then use a full HIP assay to screen the drugs we selected for those that respond best&mdash;and only&mdash;to GAT1, aiming for a graph where GAT1 is significantly higher than all others.

Having found this drug we would use HOP to search for genes that act downstream of GAT1. If our model is true we would expect to pull genes like GLN3, DAL60, and NCR genes themselves, but not TOR1 as it is upstream of GAT1.

####Conclusion

If all of these experiments produce the expected result we would have verified a number of key aspects of our model, including:

* The physical interaction between TOR1 and GAT1
* The response of the system to nitrogen source quality
* The order of several components of the system

##Kachroo _et al_

Systematic humanization of yeast genes reveals conserved functions and genetic modularity, _Science_, 22 May 2015.

###Idea

* Take yeast
* Knockout 414 essential genes
* Replace with human analogues, creating 414 strains
* Grow
* 47% were viable

Sequence _simularity_ was not key for replacement, but whether or not they retained similar function. The near-half viability comes in spite of a billion-year split between the two species.

####Selecting the genes

There are 757 genes in humans that have a 1:1 orthology with essential yeast genes.

##Past Exams

A variety of formats exist&mdash;a different one each year. It looks like in 2013 part 1 wasn't in the exam, so presumably Joe was involved. 2014 and 2015 have three parts divided into two subparts&mdash;question 3b seems to be about a presentation, presumably Melanie's.

###SENS
Two of three of the most recent past exams[^SevenSENSexam] asked for you to "identify and rationalise five of the seven" SENS strategies.

###Function of non-essential genes
Two of three of the most recent past exams[^nonessexam] have questions asking about how you would go about determining the function of a gene in yeast, given that a knockout fails to die. The 2014 version:

[^nonessexam]: The question appears in both 2014 and 2015 in equivalent forms.

> Question 7. (14 marks)
>
> You are a new graduate student in a systems biology lab. Your evil supervisor has assigned you a thesis to identify the function of a yeast gene that is currently without a known function (approximately 15% of the yeast genome remains functionally unassigned). The only data for your gene is that the gene is non-essential based on viability of a deletion mutant. For your thesis proposal, you must map out a strategy to uncover the function of your gene. Since you work at a systems biology institute, you have every possible genome-wide assay at your disposal. Outline three (3) genomic approaches that you would employ to study this gene. Include a description of the experimental system, the method you would use (what is the actual experiment and how does it work?) and an explanation of the nature of the results (what do you measure at the end and what information does it give you?).

The 2015 version is worth 20 marks, and is trimmed down (the advisor is no-longer "evil") but still functionally equivalent albeit now worth 1/5 of the exam and not 1/7.

###Molecular signature of natural selection

Question 2 in part A of the 2015 exam[^natselsigexam] asks:

[^natselsigexam]: Five marks.

> Describe the five molecular signatures of natural selection.

###SIRT1 regulation

Part 1 question five in the 2015 exam asks about the Hubbard _et al._ (2013) paper.[^Hubbardpaper] The question is worth 20 marks, and is opposite the function of non-essential genes question. It says:[^SIRT1format]

[^Hubbardpaper]: Hubbard _et al._ (2013) [_Evidence for a Common Mechanism of SIRT1 Regulation by Allosteric Activators_](http://science.sciencemag.org/content/339/6124/1216.abstract)
[^SIRT1format]: Format altered from original.

> Describe in detail the experiments reported by Hubbard _et al._ (2013) in their paper titled "Evidence for a Common Mechanism of SIRT1 Regulation by Allosteric Activators" that experimentally proved that a specific amino acid in SIRT1 was a direct target of resveratrol. Include the following in your answer:
>
> 1. a description of the mutagenesis experiment that allowed for the investigation of specific amino acids,
> 2. a description of select experiments in the paper and the major findings of those experiments,
> 3. a description of the initial experiments in yeast that identified sirtuin genes as potential anti-ageing targets, and
> 4. a discussion of the age-related biological processes and pathways that are regulated by sirtuin genes.

####Materials

Hubbard _et al._ is accompanied by a Perspective article,[^hubbardperspective] and also has a pithy summary-type thing entitled _It's a SIRT_, which reads:

[^hubbardperspective]: Hua Yuan & Ronen Marmorstein, [_Red Wine, Toast of the Town (Again)_](http://science.sciencemag.org/content/339/6124/1156).

> Intense attention has focused on the SIRT1 deacetylase as a possible target for anti-aging drugs. But unexpected complications in assays of SIRT1 activity have made it unclear whether compounds thought to be sirtuin-activating compounds (STACs) are really direct regulators of the enzyme. Further exploration of these effects by Hubbard et al. (p. 1216; see the Perspective by Yuan and Marmorstein) revealed that interaction of SIRT1 with certain substrates allows activation of SIRT1 by STACs and identified critical amino acids in SIRT1 required for these effects. Mouse myoblasts reconstituted with SIRT1 mutated at this amino acid lost their responsiveness to STACs.

The summary section of the perspective reads:

> Sirtuin proteins were once only of interest to yeast geneticists studying transcriptional regulation. That changed when their conserved effects on extending life span in yeast, worms, and flies were reported (1–3). Attention widened even more at the possibility of small-molecule activators of sirtuins increasing human health span and perhaps also life span (see the figure). Then came resveratrol, a natural compound found in red wine that could reportedly activate SIRT1, a human member of the sirtuin family. But just as quickly as red wine became the toast of the town, the biochemical assays used to identify resveratrol and other sirtuin-activating compounds (STACs) were called into question. Speculation that the cellular effects of STACs are achieved not through direct SIRT1 binding, but instead through other proteins, gave pause to wine enthusiasts, among others. Glasses may be lifted once again, however. On page 1216 of this issue, Hubbard et al. (4) demonstrate that SIRT1 can indeed be activated by resveratrol and other STACs in vitro, but only under certain conditions.

####Analysis

SIRT1 is a member of the sirtuin family of proteins, which has effects on aging in yeast and other organisms. Red wine contains resveratrol, a chemical which can act to activate sitruins and thus could slow aging in humans. But this is a matter of debate, which Hubbard _et al._ wade into.

###Linkage disequilibrium

Part 1 question three of 2015 asks:

> Define linkage disequilibrium and explain how linkage disequilibrium is regulated by recombination.

##Footnotes
Footnotes appear below this line, but are coded in markdown after the paragraph in which they feature.
