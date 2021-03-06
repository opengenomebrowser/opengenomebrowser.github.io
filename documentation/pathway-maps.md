## Pathway maps (optional)

OpenGenomeBrowser is able to dynamically color pathway maps.

````
├── organisms
    └── ...
└── pathway_maps
     ├── type_dictionary.json
     └── svg
         ├── map1.svg
         └── ...
````

### Required SVG format

The svg should have a title attribute. Example:

```xml

<svg
        title='Phenylalanine, tyrosine and tryptophan biosynthesis'
        version='1.1' baseProfile='full' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'
        <!-- other attributes -->
        >
```

Each enzyme in the SVG needs to belong to the class `shape` and have the `data-annotations`-attribute. Example:

```xml

<circle cx='978' cy='930' r='4' fill='transparent'  <!-- Must not be circle, can be any other SVG element -->
        title='C00296 (Quinate)'  <!-- will tooltip -->
        class='shape compound'  <!-- only class 'shape' is required -->
        data-annotations='[{"description": "L-Ectoine", "name": "C06231", "type": "KEGG Compound"}]'>  <!-- see below -->
        />
```

The `data-annotations`-attribute tells OpenGenomeBrowser which annotations are behind the shape.

Example:

```json
[
  {
    "description": "L-Ectoine",
    "name": "C06231",
    "type": "KEGG Compound"
  }
]
```

Note: To allow users to click on the shapes, they must be in the foreground or other SVG-elements need the property `style='pointer-events: none'`.

### type_dictionary.json

In order to allow more freedom for SVG-creators, the `type` of the annotations must not adhere to OpenGenomeBrowser nomenclature.

Instead, another file is required: `type_dictionary.json`. It consists of a mapping of all shape types that occur in the SVGs to OpenGenomeBrowser
types. If a type does not correspond to an OpenGenomeBrowser type, simply map it to `ignore`.

Example:

```json
{
  "Gene Product": "GP",
  "Gene Code": "GC",
  "Ortholog": "OL",
  "Custom Annotation": "CU",
  "K": "KG",
  "R": "KR",
  "EC": "EC",
  "GO": "GO",
  "C": "ignore",
  "G": "ignore",
  "D": "ignore",
  "DG": "ignore",
  "BR": "ignore",
  "MAP": "ignore",
  "Unknown": "ignore"
}
```

OpenGenomeBrowser types:

  - `KG`: (KEGG gene, format: `K000000`)
  - `KR`: (KEGG reaction, format: `R00000`)
  - `GO`: (Gene ontology, format: `GO:0000000`)
  - `EC`: (Enzyme commission, format: `EC:0.0`, `EC:0.0.0` or `EC:0.0.0.0`)
  - `CU`: (Custom)

### Import pathway svgs

1. [Open a terminal in the container](https://opengenomebrowser.github.io/installation.html#connect-to-the-opengenomebrowser-container)
1. run `python db_setup/manage_ogb.py import-pathway-maps`

