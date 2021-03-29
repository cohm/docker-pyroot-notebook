FROM rootproject/root:latest

WORKDIR /work

RUN apt update
RUN apt -y install git-all
RUN apt -y install python3-pip

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install scipy
RUN python3 -m pip install matplotlib

RUN python3 -m pip install jupyter
#RUN python3 -m pip install prompt-toolkit==1.0.15 # deal with prompt-toolkit issue (downgrade)

# Run jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
