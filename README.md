# ecpc - Easy Comandline Pipeline Computation

![ecpc logo](ecpc.svg)

## QUICK START - BASIC USAGE
```
nextflow run https://github.com/grpiccoli/ecpc \
--i "<input(s)>" \
--c "<container url>" \
--a "<arguments>"
```

### OPTIONS:
| Basic Options | Default Value                      | Description
| ------------- | ---------------------------------- | ---------------------------------------
| --c         | *REQUIRED* | path to input bam, fastx file  
| --a           | *REQUIRED* |  arguments  
| --i           | *REQUIRED* |  inputs    
| **Advanced Options** | **Default Value**                        |
| --m           | 24.GB                   | RAM memory allocation  
| --p           | 12                      | CPU core allocation  
| --o           | output                   | default output folder  
| --o_f           | *                   | expected output files to keep, * will keep everything  
| **HPC Options** | **Default Value**                        |
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