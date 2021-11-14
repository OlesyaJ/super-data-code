FROM tensorflow/tensorflow:latest-devel-gpu-py3


WORKDIR /tensorflow_src
RUN touch WORKSPACE
RUN export LD_LIBRARY_PATH=/usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda/lib64:/usr/include/x64_64-linux-gnu:/usr/local/nvidia/lib:/usr/local/nvidia/lib64



ENV TF_NEED_CUDA 1
ENV TF_NEED_TENSORRT=1
ENV TF_CUDA_COMPUTE_CAPABILITIES 6.0,6.1,6.2,7.0
ENV TF_CUDA_VERSION 10.1
ENV TF_CUDNN_VERSION 7
#ENV CUDA_TOOLKIT_PATH /usr/local/cuda
#ENV CUDNN_INSTALL_PATH /usr/lib/x86_64−linux−gnu/

#RUN yes '' | ./configure

RUN ./configure

#RUN bazel build --config=opt --config=cuda  //tensorflow/tools/pip_package:build_pip_package
RUN bazel build --config=cuda --config=opt  //tensorflow/tools/pip_package:build_pip_package

RUN ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /mnt  # create package



#RUN chown $HOST_PERMS /mnt/tensorflow-version-tags.whl

RUN pip uninstall tensorflow  # remove current version

RUN pip install /mnt/*.whl

#############
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get clean autoclean -y && apt-get autoremove -y


RUN apt-get clean && apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y wget mc


RUN pip install --upgrade pip

RUN pip install numpy scipy matplotlib pandas scikit-learn tqdm

#RUN pip install pytorch pytorch torchvision
RUN pip install jupyterlab


RUN pip install PyQt5
RUN pip install xlsxwriter
RUN pip install ipython numpy pandas scikit-learn notebook matplotlib
RUN pip install catboost
RUN pip install nodejs


RUN pip install scikit-image
RUN pip install fbprophet
RUN pip install lightgbm
RUN pip install ipywidgets
RUN pip install xlwt
RUN pip install torch
RUN pip install xlrd

RUN apt-get install -y git


RUN apt-get install -y mc
RUN apt-get install -y htop


RUN apt-get install cmake  -y
RUN pip3 install opencv-python

WORKDIR /root



ENV LD_LIBRARY_PATH /usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda/lib64:/usr/include/x64_64-linux-gnu:/usr/local/nvidia/lib:/usr/local/nvidia/lib64


#Qazxsw12345
RUN jupyter notebook --generate-config --allow-root && \
    echo "c.NotebookApp.password = u'sha1:35ed3bea1b9f:e3fa18d4da1e65c8ab1c5301a4ef6066a54fdca7'" >> /root/.jupyter/jupyter_notebook_config.py



CMD ["sh", "-c", "jupyter-lab --allow-root --no-browser  --ip='0.0.0.0' --port=8777"]