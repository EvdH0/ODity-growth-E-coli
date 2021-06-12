
# Data analysis of _E. coli_ growth using ODity.bio
This is the full data analysis accompanying the pre-print _Reconstructing live bacterial densities using non-invasive optical measurements of E. coli_ on _bioRxiv_.
The analysis is wrapped in a Jupyter Notebook [ODity growth measurements of Ecoli MG1655](https://nbviewer.jupyter.org/github/EvdH0/ODity-growth-E-coli/blob/main/ODity%20growth%20measurements%20of%20Ecoli%20MG1655.ipynb), which can be viewed with the in-line results in this repository, or ran from beginning-to-end to reproduce the conclusions of the paper. 
GitHub sometimes has trouble rendering Jupyter notebooks, so instead use the online nbviewer [here](https://nbviewer.jupyter.org/github/EvdH0/ODity-growth-Ecoli/blob/main/ODity%20growth%20measurements%20of%20Ecoli%20MG1655.ipynb)


Publication figures can be found in the `output_figures` folder
![image](https://user-images.githubusercontent.com/5472957/121781196-eeb6d780-cba3-11eb-8dab-eb9010d4bbff.png)


Example of figure 3 from the pre-print.

## Installation
### Requirements
```
cufflinks==0.17.3
lmfit==1.0.2
matplotlib==3.1.3
numdifftools==0.9.39
numpy==1.18.1
pandas==1.0.1
plotly==4.10.0
scipy==1.4.1
```

### Docker
To circumvent setting up all the dependencies in a Python environment, a Docker container is supplied on Docker Hub. The following four simple steps are required

1.	To get started download Docker https://docs.docker.com/get-started/
2.	Pull down this repository using `git clone https://github.com/EvdH0/ODity-growth-Ecoli.git`
3.	Download the image `docker pull evdh0/scipy-notebook-odity-ecoli:latest`
4.	Then use `docker run -p 8888:8888 -v $(pwd):/home/jovyan/work evdh0/scipy-notebook-odity-ecoli` to launch the container and start the Jupyter notebook on your local machine
5.	Browse to http://127.0.0.1:8888/ and the notebook and data is accessible in the `work` folder



## License
Apache License, Version 2.0, see `LICENSE`

## Author
The notebook was written by Eric van der Helm.

## Citation
XXX 

