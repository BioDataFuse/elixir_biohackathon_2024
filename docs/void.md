# Steps to create void files

## Download RDF files
- **HPO** from [HPO Ontology](https://hpo.jax.org/data/ontology)
- **ClinVar** from [ClinVar GitHub Repository](https://github.com/med2rdf/clinvar)

## Running Void Generator
See the install guidance [here](https://github.com/JervenBolleman/void-generator?tab=readme-ov-file)

**Note:** The following commands need to be executed in a terminal

```bash
path_to_graph_file=graph_files
path_to_void_file=void_files
ttl_file=mim2gene_medgen
java -jar target/void-generator-0.4-SNAPSHOT-uber.jar \
  --from-test-file=${path_to_graph_file}/${ttl_file}.ttl \
  -i 'https://${ttl_file}.example.org/.well-known/void' \
  -r 'https://${ttl_file}.example.org/sparql' \
  -s ${path_to_void_file}/${ttl_file}-void.ttl
```

