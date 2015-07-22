#!/bin/bash
#cd ~/Copy/proyecto/data/processed/prueba_piloto/alineamientos_modificados
#cp Compendio.nex ~/Copy/proyecto/data/raw/prueba_piloto/mrbayes
cd ~/Copy/data/raw/prueba_piloto/mrbayes
mpirun -np 4 mb Compendio.nex
