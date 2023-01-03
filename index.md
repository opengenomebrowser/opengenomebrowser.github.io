---
image:
  path: /media/ogb-full.png
  height: 1000
  width: 1200
  alt: OpenGenomeBrowser Logo
---

<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

<style>
.center-content {
    text-align: center;
}

.ogb-logo {
    border: unset;
    box-shadow: unset;
    width: 500px;
}

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

<div class="center-content">
<img class="ogb-logo" src="/media/ogb-full.svg">

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


## Abstract

OpenGenomeBrowser is a self-hostable open-source platform that manages access to genomic data and drastically simplifies
comparative genomics analyses. It enables users to interactively generate phylogenetic trees, compare gene loci, browse
biochemical pathways, perform gene trait matching, create dot plots, execute BLAST searches, and access the data. It
features a flexible user management system, and its modular folder structure enables the organization of genomic data
and metadata, and to automate analyses.

<iframe src="https://www.youtube.com/embed/rkWREfcwPKQ" allow="encrypted-media" allowfullscreen frameborder="0" scrolling="no" style="overflow:hidden;width:100%; aspect-ratio: 16/9;" height="100%" width="100%"></iframe>


## Get help

If you find a bug that has not been reported
yet, [submit an issuehere on GitHub](https://github.com/opengenomebrowser/opengenomebrowser/issues).

To chat with the developer join the OpenGenomeBrowser [Discord channel](https://discord.gg/mDm4fqf).


## [News](news.md)

<style>
h2 a {
   color: black;
}
</style>

{% include news-feed.md %}


## Funding

OpenGenomeBrowser was created with funding from:

<style>
.card { border:none; background-color: white; border-radius: 4px; box-shadow: 0 5px 20px rgba(71,80,89,.15); }
.flex-center { display: flex; justify-content: space-between; }
.mini-img{ width: 60%; margin: 0; padding: .4rem; border: unset; box-shadow: unset }
.funder {
	flex-direction: column;
	align-items: center;
    text-align:center;
	width: 30%;
	border: none;
    color: black;
	background-color: white;
	border-radius: 4px;
	box-shadow: 0 5px 20px rgba(71,80,89,.15);
	padding: 0.8rem 0;
}
</style>

<div class="flex-center">
    <a href="https://www.bioinformatics.unibe.ch/" class="funder flex-center card">
        <img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/unibe.png" class="mini-img"/>
        <span>University of Bern</span>
    </a>
    <a href="https://www.agroscope.admin.ch/" class="funder flex-center card">
        <img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/agroscope.png" class="mini-img"/>
        <span>Agroscope</span>
    </a>
    <a href="https://www.grstiftung.ch/" class="funder flex-center card">
        <img src="https://opengenomebrowser.bioinformatics.unibe.ch/static/index/images/GRS.jpg" class="mini-img"/>
        <span>Gebert Rüf Stiftung</span>
    </a>
</div>
