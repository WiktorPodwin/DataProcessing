FROM jupyter/pyspark-notebook:x86_64-ubuntu-22.04

USER root

RUN apt-get update && apt-get install -y wget

RUN wget https://jdbc.postgresql.org/download/postgresql-42.6.0.jar -P /usr/local/spark/jars/

USER $NB_UID