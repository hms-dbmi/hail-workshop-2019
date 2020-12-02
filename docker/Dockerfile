FROM ubuntu:18.04
RUN apt-get update -qqy && apt-get install -qqy \
    openjdk-8-jre-headless \
    g++ \
    python3.6 python3-pip \
    libopenblas-base liblapack3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# Install hail
RUN python3 -m pip install hail cython ipywidgets jupyterlab && \
    useradd -ms /bin/bash hail
# Add new user
USER hail
WORKDIR /home/hail
RUN mkdir -p ~/.jupyter && \
    { \
        echo '{"NotebookApp": {' > ~/.jupyter/jupyter_notebook_config.json; \
        echo '"password": "sha1:dd450f56f081:655dbd6539fc820335c303bf606c857cd62d857b",' >> ~/.jupyter/jupyter_notebook_config.json; \
        echo '"ip": "0.0.0.0",' >> ~/.jupyter/jupyter_notebook_config.json; \
        echo '"allow_origin": "*"}}' >> ~/.jupyter/jupyter_notebook_config.json; \
    }
    
# courtesy of Masahiro Kanai (@mkanai)