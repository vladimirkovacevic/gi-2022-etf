FROM ubuntu:16.04
RUN apt-get update && apt-get install -y build-essential zlib1g-dev \
    libgsl0-dev wget unzip
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN apt-get -y install openjdk-8-jdk openjdk-8-jre && apt-get clean
WORKDIR /opt
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip
RUN unzip fastqc_v0.11.8.zip && rm fastqc_v0.11.8.zip
RUN chmod 755 /opt/FastQC/fastqc
RUN ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc

COPY Dockerfile /opt/

# Maintainer
MAINTAINER Phillip Brooks, Seven Bridges Genomics, <phillip.brooks@sbgenomics.com>
