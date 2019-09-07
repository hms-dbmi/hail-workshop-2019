# i2b2tranSMART Foundation Harvard Symposium 2019: *Hail workshop material*

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

### Local installation in MAC using the command line

Execute the following commands in your terminal:

```
## Install Conda 
cd ~/Desktop # or your path of preference
git clone https://github.com/hms-dbmi/hail-workshop-2019.git
cd hail-workshop-2019
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-MacOSX-x86_64.sh

# For a lighter installation you can use Miniconda instead: 
# https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh

# If you don't have wget install it by running "brew install wget" or manually download from: https://repo.anaconda.com/archive/Anaconda3-2019.03-MacOSX-x86_64.sh

sh Anaconda3-2019.03-MacOSX-x86_64.sh

# Follow the instructions 
# For the question "Do you wish the installer to initialize Anaconda3 by running conda init?" We recommend "yes".

rm Anaconda3-2019.03-MacOSX-x86_64.sh

# Java 1.8 JDK has to be installed at this point: https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html (You need to create an account)

java -version

source ~/.bash_profile

# Hail environment with Python 3.7 and Jupyter Lab

conda create --name hail python=3.7
conda activate hail
python -V # Make sure it's Python 3.7.3
python -m pip install hail
python -m pip install ipywidgets
python -m pip install jupyterlab

# Run Jupyter Lab

HOSTDIR=$(pwd)
cd $HOSTDIR/notebooks
jupyter lab # The path where this command is executed is automatically selected as the HOME directory
```

### Local installation using DOCKER

Make sure you have Docker installed. OTW [Click HERE for installation instructions](<https://docs.docker.com/v17.12/install/>).

Once Docker is installed and running, execute the following commands in your terminal:

```
cd ~/Desktop # or your path of preference
git clone https://github.com/hms-dbmi/hail-workshop-2019.git
cd hail-workshop-2019/hail_docker

# Build image 
sudo docker build . --tag hail

# Run docker in the local host
HOSTDIR=$(pwd | sed 's/\/hail_docker$//g')
sudo docker run -p 127.0.0.1:8888:8888 -d -v $HOSTDIR/notebooks:/notebooks --name hail hail --mount
```

Once the container is running, open a new browser window and type `localhost:8888`, then Jupyter Lab should run. All the work you do will be saved in the `notebooks` folder.

Make sure you have disk space for the installation: 

| Repository | Size |
|:----------|:----:|
| hail |	2.42GB |
| miniconda3 | 457MB |


###  Deploy clusters and install `Hail` in cloud services 

The following tools will help you spining clusters in both Google and AWS:

- [Hail-on-Google-Cloud](https://github.com/hms-dbmi/Hail-on-Google-Cloud "DataProc Repo")

- [hail-on-AWS-spot-instances](https://github.com/hms-dbmi/hail-on-AWS-spot-instances "AWS Repo")


## Useful terminology

**Cloud computing**: he practice of using a network of remote servers hosted on the Internet to store, manage, and process data, rather than a local server or a personal computer

**Cluster**: collection of computers that work together to analyse data

