## Phylogenetic Reconstruction of Mitochondria using Protein sequences##

To use the scripts you will required the following programs:

- [**Amphora2**](https://github.com/martinwu/AMPHORA2)
- [**Bioperl**](http://www.bioperl.org/wiki/Main_Page)
- [**Python**](https://www.python.org/)
- [**Ipython notebook**](http://ipython.org/notebook.html)
- [**Biopython**](https://www.python.org/)
- [**Bioperl**](http://www.bioperl.org/wiki/Main_Page)
- [**Bash**](https://www.gnu.org/software/bash/)
- [**R**](http://www.r-project.org/)
- [**Phylobayes**](http://megasun.bch.umontreal.ca/People/lartillot/www/download.html)

You need to replace `~/Copy/proyecto` by your folder direction i.e. `/`.

In your folder i.e. `/` you need to create `data` folder and inside `processed/` `raw` folders i.e. `mkdir /data/ processed raw`

All processes were automated in Bash Script.
In Bash folder you can run the scripts following this order:

1. Pilot
 1. `./descarga_piloto.sh` (Download genomes for NCBI).
 2. `./rastreo_piloto.sh` (Search genetic markers)
 3. `./recorte_alineamiento.sh` (alignment and trimmer of genetic markers)
