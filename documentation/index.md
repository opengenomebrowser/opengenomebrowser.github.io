<link rel="shortcut icon" type="image/svg+xml" href="/favicon.svg">

# Documentation

- [Folder structure and metadata](folder_structure_and_metadata.md)
- [Annotations](annotations.md)
- [Orthologs and Orthofinder](orthologs.md)
- [Pathway maps](pathway-maps.md)

# A shortcut: `opengenomebrowser-tools`

The library [opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools) makes loading genome-associated files into the
folder structure really simple.

For example, it only takes two commands to annotate an assembly using prokka and import it into the folder structure:

```shell
export GENOMIC_DATABASE=/path/to/database

init_database  # requires the opengenomebrowser-tools python library

prokka \
  --strain STRAIN \ 
  --locustag STRAIN.1 \
  --genus Mycoplasma --species genitalium \
  --out /prokka/out/dir \
  assembly.fasta

import_genome --import_dir=/prokka/out/dir  # requires the opengenomebrowser-tools python library
```

Nevertheless, it is a good idea to have some idea of how OpenGenomeBrowser works.

