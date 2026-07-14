FROM python:3.13-slim

WORKDIR /workspace

RUN pip install --no-cache-dir \
    jupyter \
    pandas \
    numpy \
    matplotlib \
    seaborn \
    scikit-learn \
    scipy \
    plotly

EXPOSE 8888

CMD ["bash"]