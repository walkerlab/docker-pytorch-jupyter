# Image Args
ARG BASE_IMG_NAME

FROM ${BASE_IMG_NAME}
LABEL maintainer="Edgar Y. Walker <eywalker@uw.edu>, Daniel Sitonic <sitonic@uw.edu>"
WORKDIR /src

# Deal with pesky Python 3 encoding issue
ENV LANG C.UTF-8

# Install essential Python packages
RUN pip3 --no-cache-dir install \
    numpy \
    matplotlib \
    scipy \
    pandas \
    jupyter \
    jupyterlab \
    scikit-learn \
    scikit-image \
    seaborn \
    graphviz \
    h5py \
    gitpython \
    Pillow \
    networkx==2.6.3 \
    datajoint

# Install Node JS
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && apt-get install -y nodejs

# Export port for Jupyter Notebook
EXPOSE 8888

# Add Jupyter Notebook config
COPY ./jupyter_server_config.py /root/.jupyter/

# By default start running jupyter notebook
CMD ["jupyter", "lab", "--allow-root"]