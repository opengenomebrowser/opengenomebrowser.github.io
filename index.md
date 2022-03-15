<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

## Welcome to OpenGenomeBrowser

_OpenGenomeBrowser is a dynamic and scalable web platform for comparative genomics._

<div align="center">
<img src="https://raw.githubusercontent.com/opengenomebrowser/opengenomebrowser/master/website/static/global/customicons/ogb-full.svg"  width="500px">

<style type="text/css">
    #ogb-btns > .ogb-btn {
        padding-left: 30px;
        background-repeat: no-repeat;
        background-position: top 50% left 10px;
        background-size: 16px;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        text-align: left;

    }

    #ogb-btn-demo {
        background-image: url('/media/demo.svg');
        background-color: #88c6af;
    }

    #ogb-btn-youtube {
        background-image: url('/media/youtube.svg');
        background-color: #85bed4;
    }

    #ogb-btn-docs {
        background-image: url('/media/docs.svg');
        background-color: #3a84b4;
    }

    #ogb-btn-source {
        background-image: url('/media/source.svg');
        background-color: #9f6fc6;
    }

    .ogb-btn:hover {
        filter: brightness(0.8);
    }

    .ogb-btn {
        color: #212529;
        text-decoration: none !important;
        display: inline-block;
        font-weight: 400;
        text-align: center;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: 1px solid transparent;
        padding: .375rem .75rem;
        font-size: 1rem;
        line-height: 1.5;
        border-radius: .25rem;
        transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, filter .15s ease-in-out;
    }

    #ogb-btns {
        position: relative;
        display: -ms-inline-flexbox;
        display: inline-flex;
        vertical-align: middle;
    }

    .ogb-btn:not(:disabled):not(.disabled) {
        cursor: pointer;
    }

    #ogb-btns > #ogb-btns:not(:last-child) > .ogb-btn, #ogb-btns > .ogb-btn:not(:last-child) {
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }

    #ogb-btns > #ogb-btns:not(:first-child) > .ogb-btn, #ogb-btns > .ogb-btn:not(:first-child) {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
    }
</style>

<div id="ogb-btns" aria-label="OpenGenomeBrowser links panel">
    <a id="ogb-btn-demo" type="button" class="ogb-btn" href="https://opengenomebrowser.bioinformatics.unibe.ch/"
    >Demo</a>
    <a id="ogb-btn-youtube" type="button" class="ogb-btn" href="https://www.youtube.com/watch?v=rkWREfcwPKQ"
    >Youtube</a>
    <a id="ogb-btn-docs" type="button" class="ogb-btn" href="https://opengenomebrowser.github.io/"
    >Docs</a>
    <a id="ogb-btn-source" type="button" class="ogb-btn" href="https://github.com/opengenomebrowser/opengenomebrowser"
    >Source</a>
</div>
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
    - [OrthoFinder](https://github.com/davidemms/OrthoFinder) is recommended, but not required (allows core genome
      dendrogram calculations)
    - Computationally intensive processes can be outsourced to a cluster

## Key concepts

- _Organism_: biological entity, e.g. a microbial strain
- _Genome_: one sample of a particular organism. Multiple genomes can be associated with one organism, e.g. if a
  particular strain has been sequenced multiple times
- The _representative_ genome: the best available genome of an organism

## Get help

If you find a bug that has not been reported
yet, [submit an issuehere on GitHub](https://github.com/opengenomebrowser/opengenomebrowser/issues).

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
