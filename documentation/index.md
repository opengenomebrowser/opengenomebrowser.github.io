<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

## Key concepts

- _Organism_: biological entity, e.g. a microbial strain
- _Genome_: one sample of a particular organism. Multiple genomes can be associated with one organism, e.g. if a
  particular strain has been sequenced multiple times
- The _representative_ genome: the best available genome of an organism


# Documentation

- [Folder structure and metadata](folder-structure-and-metadata.md)
- [Annotations](annotations.md)
- [Orthologs and Orthofinder](orthologs.md)
- [Pathway maps](pathway-maps.md)


# A shortcut: `opengenomebrowser-tools`

The library [opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools) makes loading genome-associated files into the
folder structure really simple.

For example, it only takes two commands to annotate an assembly using prokka and import it into the folder structure:

```shell
export FOLDER_STRUCTURE=/path/to/folder_structure

init_folder_structure  # requires the opengenomebrowser-tools python library

prokka \
  --strain STRAIN \ 
  --locustag STRAIN.1 \
  --genus Mycoplasma --species genitalium \
  --out /prokka/out/dir \
  assembly.fasta

import_genome --import_dir=/prokka/out/dir  # requires the opengenomebrowser-tools python library
```

Nevertheless, it is a good idea to have some idea of how OpenGenomeBrowser works.

