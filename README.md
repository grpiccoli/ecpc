# ecpc

## QUICK START - BASIC USAGE
```
nextflow run https://github.com/grpiccoli/ecpc \
--c <container url> \
--a <arguments>
--i <input(s)>
```

### OPTIONS:
| Options       | Default Value                      | Description
| ------------- | ---------------------------------- | ---------------------------------------
| --c         |                       | **REQUIRED** path to input bam, fastx file  
| --a           |  | **REQUIRED** arguments  
| --i           |  | **REQUIRED** inputs    
| **Advanced Options** |                         |
| --m           | 24.GB                   | RAM memory allocation  
| --p           | 12                      | CPU core allocation  
| **HPC Options** |                         |
| --e           | local                   | nextflow executor (slurm, local, etc)  
| --q           | quicktest                  | queue/partition name  
| --t           | 1h                      | max execution time  

## REQUIREMENTS:
1) nextflow, instalation without sudo:
```
curl -s https://get.nextflow.io | bash
```
2) singularity, instalation might require sudo:
[sylabs.io/guides/3.5/user-guide/quick_start.html](https://sylabs.io/guides/3.5/user-guide/quick_start.html)
