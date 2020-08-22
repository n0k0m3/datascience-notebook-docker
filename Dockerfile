FROM jupyter/datascience-notebook

LABEL maintainer="Minh Nguyen <vmnguyen251@gmail.com>"

USER $NB_UID

RUN conda update --quiet --yes -n base conda

RUN conda update --quiet --yes --all
RUN conda clean --all -f -y
RUN conda create -n tf tensorflow --quiet --yes
RUN conda activate tf

RUN conda install --quiet --yes -c conda-forge jupyter_contrib_nbextensions

RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable init_cell/main

RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension enable jupyter-js-widgets/extension
RUN jupyter nbextension enable livemdpreview/livemdpreview
RUN jupyter nbextension enable nbextensions_configurator/tree_tab/main
RUN jupyter nbextension enable contrib_nbextensions_help_item/main
RUN jupyter nbextension enable nbextensions_configurator/config_menu/main
RUN jupyter nbextension enable python-markdown/main
RUN jupyter nbextension enable codefolding/main
