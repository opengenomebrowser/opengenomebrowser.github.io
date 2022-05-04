# Folder structure

```
folder_structure
├── version.json
└── organisms
     ├── ORGANISM1
     ├── ...
     └── EXAMPLE1234
         ├── organism.json
         ├── organism.md (optional)
         └── genomes
            ├── EXAMPLE1234-1-1.1
            └── EXAMPLE1234-2-1.1
              ├── genome.json
              ├── genome.md (optional)
              ├── assembly.fna
              ├── protein.faa
              ├── genbank.gbk
              ├── generalfeatureformat.gff
              ├── annotations.ko (optional)
              └── annotations.eggnog (optional)
```

## A shortcut: `opengenomebrowser-tools`

The python library [opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools) can create
both the folder structure and
the metadata files automatically! The relevant commands are `init_folder_structure` and `import_genome`.

## Versioning

From time to time, changes are made to the OpenGenomeBrowser folder structure. This is reflected in `version.json`. The
folder structure and the
OpenGenomeBrowser code must always be compatible. If they are not, OpenGenomeBrowser will not start and give an error
message. In this case, the
relevant updates must be applied to the folder structure. The command `update_folder_structure` in the library
[opengenomebrowser-tools](https://github.com/opengenomebrowser/opengenomebrowser-tools)
should make this very easy. Example usage:

```shell
export GENOMIC_DATABASE=/path/to/folder_structure
update_folder_structure 1_to_2
```

## Rules

- genome names must start with the name of the corresponding organism
    - we _suggest_ to use this suffix format:
      `organism`-`isolate`-`assembly`.`annotation`
    - example: organism=`EXAMPLE1234` -> `EXAMPLE1234-2-1.1`
- gene locus tags must start with the genome identifier, followed by an underline (`_`)
    - example: `EXAMPLE1234-2-1.1_000001`

# Metadata files

### Notes:

- paths are relative to the genome folder, i.e. it's fine to have files in a subfolders of the genome folder
- date format: `"%Y-%m-%d"`, i.e. `2000-12-31`

## organism.json:

<details>

  <summary>Click here to expand.</summary>


In the example below, all mandatory fields contain dummy data and all non-mandatory fields have null-input.

```json
{
  "name": "EXAMPLE1234",
  "alternative_name": null,
  "taxid": null,
  "restricted": false,
  "tags": [],
  "representative": "EXAMPLE1234-2-1.1"
}
```

</details>

## genome.json:

<details>

  <summary>Click here to expand.</summary>


In the example below, all mandatory fields contain dummy data and all non-mandatory fields have null-input.

```json
{
  "identifier": "EXAMPLE1234-2-1.1",
  "contaminated": false,
  "old_identifier": null,
  "isolation_date": null,
  "env_broad_scale": [],
  "env_local_scale": [],
  "env_medium": [],
  "growth_condition": null,
  "geographical_coordinates": null,
  "geographical_name": null,
  "library_preparation": null,
  "sequencing_tech": null,
  "sequencing_tech_version": null,
  "sequencing_date": null,
  "sequencing_coverage": null,
  "read_length": null,
  "assembly_tool": null,
  "assembly_version": null,
  "assembly_date": null,
  "nr_replicons": null,
  "cds_tool": null,
  "cds_tool_date": null,
  "cds_tool_version": null,
  "cds_tool_faa_file": "protein.faa",
  "cds_tool_ffn_file": "nucleotide_cds.ffn",
  "cds_tool_gbk_file": "genbank.gbk",
  "cds_tool_gff_file": "generalfeatureformat.gff",
  "cds_tool_sqn_file": null,
  "assembly_fasta_file": "assembly.fna",
  "custom_annotations": [],
  "BUSCO": {},
  "COG": {},
  "bioproject_accession": null,
  "biosample_accession": null,
  "genome_accession": null,
  "literature_references": [],
  "custom_tables": {},
  "tags": []
}
```

### BUSCO format:

```text
"BUSCO": {
  "C": 0,
  "D": 0,
  "F": 0,
  "M": 0,
  "S": 0,
  "T": 0,
  "dataset": "lactobacillales_odb10",
  "dataset_creation_date": "2000-12-31"
}
```

The keys `dataset` and `dataset_creation_date` are optional.

`opengenomebroser-tools` can automatically parse this information from busco-output-files.

### COG format:

```text
"COG": {
  "J": 152.5,
  "A": 2,
  "K": 29.3,
  "L": 65.833
}
```

These are allowed COG categories: `JAKLBDYVTMNZWUOXCGEFHIPQRS`. If a category is omitted, it is assumed to be zero.
`opengenomebroser-tools` can automatically parse this information from eggnog-files.

### Custom annotations format - type eggnog:

For files created by eggNOG v2-v2.1.1:

```text
"custom_annotations": [
  {
    "date": "0000-00-00",
    "file": "annotations.eggnog",
    "type": "__replace_this__"
  }
]
```

If your file was created by eggNOG

- v2-v2.1.1: `type` must be `eggnog`
- v2.1.2+: `type` must be `eggnog-2.1.2`

The file `annotations.eggnog` must be an eggNOG-mapper v2 output file. (Usual
filename: `query_seqs.fa.emapper.annotations`)
`opengenomebroser-tools` can automatically detect these files.

### Custom annotations format:

Click here for more information about [custom annotations](annotations.md). Click here to
learn [how to format the file](annotations.md#custom-annotation-files).

```text
"custom_annotations": [
  {
    "date": "0000-00-00",
    "file": "annotations.ko",
    "type": "KG"
  }
]
```

`opengenomebroser-tools` can automatically detect these files.

### Custom tables format:

```text
"custom_tables": {
  "Table 1 Title": {
    "index_col": "taxid",
    "taxid_cols": ["taxid"],
    "rows": [
      {
        "description": "Fakebacillus bullshitingis organism 42 16S ribosomal RNA, partial sequence",
        "taxid": 0,
        "evalue": 0.0
      }
    ]
  }
}
```

Alternatively, the markdown files (`organism.md` or `genome.md`) could be used to add tables.

### Literature references format:

```text
"literature_references": [
  {
    "url": "https://pubmed.ncbi.nlm.nih.gov/1234/",
    "name": "Name of paper"
  }
]
```

</details>

## organism.md and genome.md

<details>

  <summary>Click here to expand.</summary>


In addition to the more restrictive `.json` files, a `.md` file can optionally be added to each organism and genome.

The Markdown format is very flexible and allows users to add text, links and tables to these pages. Users with staff
permissions can edit these
Markdown files directly through OpenGenomeBrowser via the user button on the these pages.

- `organism.md` will be integrated on the main page of each organism (`/organism/<ORGANISM>`) and
  genome (`/genome/<GENOME>`)
- `genome.md` will be integrated on the main page of each genome (`/genome/<GENOME>`)

</details>

