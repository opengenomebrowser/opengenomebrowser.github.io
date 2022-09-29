<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

# Phylogenetic Trees

OpenGenomeBrowser can generate and display phylogenetic trees using three distinct algorithms:

- TaxId-based tree: Short calculation time but based on taxid-annotations only (NOT on sequence similarity).
- Genome-similarity-based tree: Short calculation time, based on pairwise comparisons of assemblies (default:
  GenDisCal (preset approxANI, see [footnotes](#footnotes)) ([Goussarov et al., Bioinformatics, 2020][Goussarov])
- Single-copy-ortholog-based tree (core-genome-based tree): Long calculation time. The methodology is based on
  [OrthoFinder][OrthoFinder] consensus tree of all single-copy ortholog
  alignments ([Emms et al., Genome Biology, 2019][Emms])

![trees demo](../media/trees.apng)

## How to get there

In the [genome table](https://opengenomebrowser.bioinformatics.unibe.ch/genomes), select multiple genomes (using `Shift` and `Ctrl`) and open the
context menu using right click. Then, click on `Show phylogenetic trees`.

## Advanced usage

Through the settings sidebar, it is possible to apply custom colors to the genomes in the tree.

Copy on the newick string to copy the dendrogram, for example to use it in other tools (e.g. [phylo.io](https://phylo.io/) or [itol](https://itol.embl.de/))

Additional downloads:

- For genome-similarity-based trees, download the distance matrix that was used to calculate the tree by clicking on `Download distance matrix`
  or `Copy distance matrix`)
- For single-copy-ortholog-based trees, download the full OrthoFinder output by clicking on `Download as .tar.xz`. If this option is not available,
  click on `Reload OrthoFinder` to regenerate the file.

### Footnotes

**GenDisCal, preset approxANI**

The distance matrix is based on whole genome nucleotide similarity calculated using 
GenDisCal ([Goussarov et al., Bioinformatics, 2020][Goussarov]) with the `approxANI` preset.
This preset is documented as follows:

[comment]: <> (`GenDisCal --preset --help`)

> approxANI is a minhash-based approximation of Average Nucleotide 
> Identity (ANI). This method is similar to the one used by the 
> Mash software ([Ondov et al., Gen. biol., 2016][Ondov])
> The ambiguity region for species is [0.04-0.06]

Thus, the GenDisCal similarities should produce values that [strongly correlate][Ondov] with
[original ANI][Konstantinov], but can be computed much faster.


[Goussarov]: https://pubmed.ncbi.nlm.nih.gov/31899493/
[Ondov]: https://doi.org/10.1186/s13059-016-0997-x
[Konstantinov]: https://doi.org/10.1073/pnas.0409727102
[OrthoFinder]: https://github.com/davidemms/OrthoFinder
[Emms]: https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1832-y
