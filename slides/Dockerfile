FROM  rocker/verse:4.2


ARG home_dir /home/rstudio

# Miniconda Installation
ARG python_dir /root/miniconda3/bin/python
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"
RUN echo $PATH
RUN apt-get update
RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget \
   https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 
RUN conda --version
# fixing permission of folder where miniconda lives
RUN chmod -R 777 /root

# fixing python path and quarto python path
ENV PYTHON_PATH $python_dir
RUN echo $PYTHON_PATH
ENV QUARTO_PYTHON $python_dir
RUN echo $QUARTO_PYTHON

# Installing Python packages
COPY requirements.txt $home_dir
RUN conda install -y --file $home_dir/requirements.txt

# installing R packages
COPY install_dependencies.R $home_dir
RUN Rscript $home_dir/install_dependencies.R 

# running a quarto conversion so all the packages required for pdf rendering are installed
COPY quarto_install.qmd $home_dir
RUN quarto render $home_dir/quarto_install.qmd --to pdf 