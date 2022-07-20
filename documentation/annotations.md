# Annotations

OpenGenomeBrowser is designed to be flexible when it comes to annotations. There are default annotation types, but they can be changed and new ones
can be added.

## Default annotation types

By default, OpenGenomeBrowser supports these types of annotations:

<table>
<thead>
<tr>
<th>Annotation type</th>
<th>Description</th>
<th>Source</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>GC</code></td>
<td>Gene code</td>
<td>GenBank file</td>
</tr>
<tr>
<td><code>GP</code></td>
<td>Gene product</td>
<td>GenBank file</td>
</tr>
<tr>
<td><code>EP</code></td>
<td>Eggnog product</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>ED</code></td>
<td>Eggnog description</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>EO</code></td>
<td>Eggnog ortholog</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>EC</code></td>
<td>Enzyme commission</td>
<td>GenBank file and Eggnog file</td>
</tr>
<tr>
<td><code>KG</code></td>
<td>KEGG gene</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>KR</code></td>
<td>KEGG reaction</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>GO</code></td>
<td>Gene ontology</td>
<td>Eggnog file</td>
</tr>
<tr>
<td><code>SL</code></td>
<td>Subcellular location</td>
<td>-</td>
</tr>
<tr>
<td><code>OL</code></td>
<td>Ortholog</td>
<td>OrthoFinder</td>
</tr>
</tbody>
</table>

These are defined in the file [`annotations.json`](https://github.com/opengenomebrowser/opengenomebrowser-tools/blob/master/data/annotations.json),
located next to the `organisms` folder.

```
├── organisms
│    └── ...
└── annotations.json
```

## Custom annotation types

New annotation types can simply be added by adding a new entry to this `annotations.json` file.

For example, this is what the definition of the `EC` annotation type looks like:

```json
{
  "EC": {
    "name": "EC Number",
    "color": "rgb(222,203,228)",
    "regex": "^EC:[0-9\\.-]{1,12}$",
    "hyperlinks": [
      {
        "name": "SIB Rhea DB",
        "url": "https://www.rhea-db.org/rhea?query=${annotation}"
      },
      {
        "name": "BRENDA",
        "url": "https://www.brenda-enzymes.org/enzyme.php?ecno=${annotation.substring(3)}"
      }
    ]
  },
  "GO": "etc..."
}
```

## Custom annotation files

Create files that map genes to annotations in this way:
A valid custom_annotations file must be in this format: `locustag\tannotation1, annotation2, annotation3`

I.e., this would be a valid file:

```
EXAMPLE1234-2-1.1_000001	K000001
EXAMPLE1234-2-1.1_000004
EXAMPLE1234-2-1.1_000008	K000001, K000002
```

Add them to `genome.json` as described [here](../documentation/folder-structure-and-metadata.md#custom-annotations-format).

## Annotation descriptions (optional)

OpenGenomeBrowser allows its users to extend annotation identifiers such as e.g. `K01695`, `EC:4.2.1.20` and `GO:0005829` with a short description to
in order to facilitate interpretation. To use this feature, simply provide a file for each annotation type which maps the annotation identifiers to
their description. These files must be located in the folder `annotation-descriptions` and named `{annotation_type}.tsv}`.

```
├── organisms
│    └── ...
├── annotations.json
└── annotation-descriptions
     ├── EC.tsv
     └── ...
```

This is the expected format: `annotation\tdescription`

```
EC:4.2.1.17	beta-hydroxyacyl-CoA dehydrase
EC:4.2.1.18	methylglutaconyl-CoA hydratase
EC:4.2.1.19	imidazoleglycerol-phosphate dehydratase
EC:4.2.1.20	L-tryptophan synthetase
```

### Import annotation descriptions

This step is only required if these files were added after the genomes were imported.

1. [Open a terminal in the container]https://github.com/opengenomebrowser/opengenomebrowser-docker-template#open-a-terminal-in-the-container
1. run `python db_setup/manage_ogb.py import-annotation-descriptions`
