# Precision Medicine 2019: Hail workshop material

<img src="https://github.com/hms-dbmi/hail-workshop-2019/blob/master/images/workshop-cover.png" height="450">

#### Harvard Medical School - Department of Biomedical Informatics - Boston, MA

## Workshop Structure

This workshop is divided in 3 modules: 

### Module 1. **Introduction to `Hail`:**

  - Deploying clusters or local installation
  - Basic concepts 
  - Hail data structure and functions
  - Aggregations
  - Basic plotting 

### Module 2. **GWAS in 5 steps**

###  Module 3. **Annotation, PCA and variant discovery**

Sample code from each module can be found at the `notebooks` folder.

## `Hail 0.2`
All the related documentation for `Hail` can be found at [their website](<https://hail.is/index.html>). Hail has two main data representations: [**Table**](<https://hail.is/docs/0.2/hail.Table.html#hail.Table>) and [**MatrixTable**](<https://hail.is/docs/0.2/overview/matrix_table.html>). This is how data is stored and it's important to learn all their features and characteristics. In addition, the [Overview page](<https://hail.is/docs/0.2/overview/index.html>) is always a good starting point for new users.  

Please note that the production release is [`version 0.2`](<https://hail.is/docs/0.2/index.html>). There are a [Forum](<https://discuss.hail.is/>) and a [Chat](<https://hail.zulipchat.com/login/>) available for support and to interact with the `Hail` community.

--- 



## Tools

### Local installation in MAC

Execute the following commands in your terminal:

```
## Install Conda; https://docs.anaconda.com/anaconda/install/mac-os/
cd ~/Desktop
git clone https://github.com/hms-dbmi/hail-workshop-2019.git
cd hail-workshop-2019
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-MacOSX-x86_64.sh
sh Anaconda3-2019.03-MacOSX-x86_64.sh

# Follow the instructions 
# For the question “Do you wish the installer to initialize Anaconda3 by running conda init?” We recommend “yes”.

rm Anaconda3-2019.03-MacOSX-x86_64.sh

conda create --name hail python=3.7
conda activate hail
python -m pip install hail
python -V # Make sure it's Python 3.7.3
python -m pip install jupyterlab
cd ~/Desktop/hail-workshop-2019/notebooks
conda activate hail
jupyter lab # The path where this command is executed is automatically selected as the HOME directory
```



###  Deploy clusters and install `Hail` in cloud services 

The following tools will help you spining clusters in both Google and AWS:

- [Hail-on-Google-Cloud](https://github.com/hms-dbmi/Hail-on-Google-Cloud "DataProc Repo")

- [hail-on-AWS-spot-instances](https://github.com/hms-dbmi/hail-on-AWS-spot-instances "AWS Repo")


## Useful terminology

**Cloud computing**: he practice of using a network of remote servers hosted on the Internet to store, manage, and process data, rather than a local server or a personal computer

**Cluster**: collection of computers that work together to analyse data

