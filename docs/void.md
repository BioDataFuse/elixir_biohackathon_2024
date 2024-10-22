# Steps to create void files

## Download RDF files
- **HPO** from [HPO Ontology](https://hpo.jax.org/data/ontology)
- **ClinVar** from [ClinVar GitHub Repository](https://github.com/med2rdf/clinvar)

## Running Void Generator

**Note:** The following commands need to be executed in a terminal

```bash
$java -jar target/void-generator-0.3-SNAPSHOT.jar \
 --from-test-file=[$path_to_graph_file]/hp.owl \
 -i 'https://hpo.example.org/.well-known/void' \
 -r 'https://hpo.example.org/sparql' \
 -s [$path_to_void_file]/hpo-void.ttl

$java -jar target/void-generator-0.3-SNAPSHOT.jar \
 --from-test-file=[$path_to_graph_file]/ClinVarVariationRelease_00-latest_1.ttl \
 -i 'https://clinvar.example.org/.well-known/void' \
 -r 'https://clinvar.example.org/sparql' \
 -s [$path_to_void_file]/clinvar-void.ttl

$java -jar target/void-generator-0.3-SNAPSHOT.jar \
 --from-test-file=[$path_to_graph_file]/pcs_bdf_graph.ttl \
 -i 'https://pcs_graph.example.org/.well-known/void' \
 -r 'https://pcs_graph.example.org/sparql' \
 -s [$path_to_void_file]/pcs_bdf_graph-void.ttl
```

