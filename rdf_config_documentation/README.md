# Workflow to get RDF-config files from any RDF graph

## Requirements
- CLI Docker installed
- Linux system


## Steps

1. Run `serve_rdf_config.sh` to get a local copy of [`JervenBolleman/void-generator`](https://github.com/JervenBolleman/void-generator) 
2. Run ```sudo docker compose up -d```

3. Go to the conductor at [`http://localhost:8899/`](http://localhost:8899/)` the  and use the log in:
 - User: `dba`
 - Password: `CONDUCTOR_PASSWORD`

4. Upload the RDF graph via `Linked Data` > `Quad Store Upload` > `Browse`. Give it a relevant IRI.

5. Go to [`http://localhost:8899/sparql/`](http://localhost:8899/sparql/). See https://vos.openlinksw.com/owiki/wiki/VOS/VirtTipsAndTricksCORsEnableSPARQLURLs to activate CORS in the site.


6. If you need to remove the graph, go to `Linked Data` > `Graphs` > `Graphs` and delete your added graph.

6. Open the port where the script in step *1* deployed the site (see terminal output) and input `http://localhost:8899/sparql/` in the apps:
- `test-rdf-config.html`
- `test.html`