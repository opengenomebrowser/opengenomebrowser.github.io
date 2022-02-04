<link rel="shortcut icon" type="image/svg+xml" href="/opengenomebrowser/favicon.svg">

## Welcome to OpenGenomeBrowser

_OpenGenomeBrowser is a dynamic and scalable web platform for comparative genomics._

<div align="center">
<img src="https://raw.githubusercontent.com/opengenomebrowser/opengenomebrowser/master/website/static/global/customicons/ogb-full.svg"  width="500px">
</div>

<hr>

**Demo instance:**
[opengenomebrowser.bioinformatics.unibe.ch](https://opengenomebrowser.bioinformatics.unibe.ch/) <br>
**Tutorials:**
[/tutorials](/tutorials/index.md) <br>
**Documentation:**
[/documentation](/documentation/index.md) <br>
**Installation:**
[/installation](/installation.md) <br>
**Helper package:**
[github.com/opengenomebrowser/opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools) <br>
**Code:**
[github.com/opengenomebrowser/opengenomebrowser](https://github.com/opengenomebrowser/opengenomebrowser) <br>

<hr>

<iframe src="https://www.youtube.com/embed/rkWREfcwPKQ" allow="encrypted-media" allowfullscreen frameborder="0" scrolling="no" style="overflow:hidden;height:360px;width:100%" height="360" width="100%"></iframe>

## Features

- OpenGenomeBrowser simplifies and automatizes standard genomic analyses such as:
    - Filtering and searching of large genomic datasets with user-supplied metadata
    - Searching for gene annotations in genomes
    - Visualization of gene loci for comparative genomic analyses
    - Generation of dendrograms (Taxid-based, ANI-based and OrthoFinder-based)
    - Pathway analyses (visualization of gene content of genomes on pathway maps)
    - Comparison of assemblies using dotplots
    - BLAST searches (nucleotide or protein level)
    - Download raw data through a webbrowser
- OpenGenomeBrowser has only few prerequisites:
    - Assembly and genome annotation files must be stored in a pre-defined folder structure
    - One metadata file per genome and per organism is required
- OpenGenomeBrowser is flexible:
    - [OrthoFinder](https://github.com/davidemms/OrthoFinder) is recommended, but not required (allows core genome dendrogram calculations)
    - Computationally intensive processes can be outsourced to a cluster

## Key concepts

- _Organism_: biological entity, e.g. a microbial strain
- _Genome_: one sample of a particular organism. Multiple genomes can be associated with one organism, e.g. if a particular strain has been sequenced
  multiple times
- The _representative_ genome: the best available genome of an organism

## Get help

If you find a bug that has not been reported yet, [submit an issuehere on GitHub](https://github.com/opengenomebrowser/opengenomebrowser/issues).

To chat with the developer join the OpenGenomeBrowser [Discord channel](https://discord.gg/mDm4fqf).

## Funding

OpenGenomeBrowser was created with funding from:

<style type="text/css">
.tg { width:100%; border:none }
.tg td { padding:2px; border:none }
.tg th { border:none }
.tg .tg-9wq8{ border:none; text-align:center; vertical-align:middle }
.mini-img{ width:120px; margin:0; padding:0 }
</style>
<table class="tg">
<tbody>
  <tr>
    <td class="tg-9wq8"><img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/unibe.png" class="mini-img"/></td>
    <td class="tg-9wq8"><a href="https://www.bioinformatics.unibe.ch/">University of Bern</a></td>
  </tr>
  <tr>
    <td class="tg-9wq8"><img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/agroscope.png" class="mini-img"/></td>
    <td class="tg-9wq8"><a href="https://www.agroscope.admin.ch/">Agroscope</a></td>
  </tr>
  <tr>
    <td class="tg-9wq8"><img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/GRS.jpg" class="mini-img"/></td>
    <td class="tg-9wq8"><a href="https://www.grstiftung.ch/">Gebert Rüf Stiftung</a></td>
  </tr>
</tbody>
</table>
