# Instructions to run the computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes using the MTBLS520 dataset
This document includes instructions on how to run the Galaxy workflow, which processes the MTBLS520 dataset as described in the publication in Nature Scientific Data [1].



## Prerequisites
First, please ask your local Galaxy administrator to install the modules as listed in [the galaxy directory](../galaxy/), or put the modules yourself in the `ecomet` directory in the tools directory of Galaxy. Please make sure that you have installed and enabled docker on your system and in the `galaxy.ini`. 

Now, edit your `tool_conf.xml` and add the following entries:

```  <section name="Eco-Metabolomics" id="ecomet">
    <tool file="ecomet/mtbls520_01_mtbls_download.xml"/>
    <tool file="ecomet/mtbls520_02a_raw_extract.xml"/>
    <tool file="ecomet/mtbls520_02b_qc_extract.xml"/>
    <tool file="ecomet/mtbls520_02_extract.xml"/>
    <tool file="ecomet/mtbls520_03_quality_control.xml"/>
    <tool file="ecomet/mtbls520_04_preparations.xml"/>
    <tool file="ecomet/mtbls520_05a_import_maf.xml"/>
    <tool file="ecomet/mtbls520_05b_peak_picking.xml"/>
    <tool file="ecomet/mtbls520_06_import_traits.xml"/>
    <tool file="ecomet/mtbls520_07_species_diversity.xml"/>
    <tool file="ecomet/mtbls520_08a_species_shannon.xml"/>
    <tool file="ecomet/mtbls520_08b_species_unique.xml"/>
    <tool file="ecomet/mtbls520_08c_species_variability.xml"/>
    <tool file="ecomet/mtbls520_08d_concentration.xml"/>
    <tool file="ecomet/mtbls520_08e_species_features.xml"/>
    <tool file="ecomet/mtbls520_09_species_venn.xml"/>
    <tool file="ecomet/mtbls520_10_species_varpart.xml"/>
    <tool file="ecomet/mtbls520_11_species_nmds.xml"/>
    <tool file="ecomet/mtbls520_12_species_marchantia.xml"/>
    <tool file="ecomet/mtbls520_14_ecology_varpart.xml"/>
    <tool file="ecomet/mtbls520_15_ecology_pca.xml"/>
    <tool file="ecomet/mtbls520_16_ecology_rda.xml"/>
    <tool file="ecomet/mtbls520_17_ecology_splsda.xml"/>
    <tool file="ecomet/mtbls520_18_phylogeny.xml"/>
    <tool file="ecomet/mtbls520_19a_seasons_shannon.xml"/>
    <tool file="ecomet/mtbls520_19b_seasons_unique.xml"/>
    <tool file="ecomet/mtbls520_19c_seasons_variability.xml"/>
    <tool file="ecomet/mtbls520_19d_seasons_concentration.xml"/>
    <tool file="ecomet/mtbls520_19e_seasons_features.xml"/>
    <tool file="ecomet/mtbls520_22_seasons_pca.xml"/>
    <tool file="ecomet/mtbls520_23_seasons_rda.xml"/>
    <tool file="ecomet/mtbls520_24_seasons_nmds.xml"/>
  </section>
```

After a restart of Galaxy, the modules should appear in the left tool pane of Galaxy.



## Tutorial
Following are instructions how to rerun the complete workflow and reproduce the results of the study published in Ecology and Evolution [2].

In the Galaxy welcome screen, click on the "Eco-Metabolomics" entry in the left pane. A list of modules will appear. Click on the module "mtbls520_01_mtbls_download". This module will download the complete MTBLS520 dataset into your Galaxy history (Fig. 1). Do not change the value in the field "MetaboLights ID". It is already set to "520" - which is the ID of the dataset in MetaboLights. In case, the study has not yet been set to public, you can enter a private token here, as indicated in the documentation. Please click on the button "Execute" to start the download. It will take several minutes for the download to complete.

![mtbls520_workflow](mtbls520_instructions_01.jpg)
Fig. 1: Running the module "mtbls520_01_mtbls_download".

After the download has been completed successfully, data from the dataset has to be imported into Galaxy. In order to proceed, please click on the module "mtbls520_02_extract" in the left pane (Fig. 2). Please choose the dataset you have just downloaded as input. When you click on the button "Execute", the data acquired in positive mode will be extracted and imported into the Galaxy history.

![mtbls520_workflow](mtbls520_instructions_02.jpg)
Fig. 2: Successful run of the module "mtbls520_02_extract"

![mtbls520_workflow](mtbls520_instructions_03.jpg)
Fig. 3: Data extraction

After the data has been imported (which can take up several minutes), click on the “Workflow” tab on the upper pane. A new screen appears, which shows all workflows shared to you (Fig. 4). In order to process the MTBLS520 workflow, you need to import the workflow into Galaxy. Please click on the "upload" button as indicated in Fig. 4. A new window will appear. Please enter the following address in the field named "Galaxy workflow URL":

```https://raw.githubusercontent.com/korseby/container-mtbls520/master/galaxy/mtbls520_workflow.ga```

A click on the button "Import" will import the workflow into Galaxy.

![mtbls520_workflow](mtbls520_instructions_04.jpg)
Fig. 4: Workflows

After the screen has been reloaded automatically, the just imported workflow should appear in the list under the name "MTBLS520 Eco-Metabolomics Worlflow (imported from uploaded file)". Please click on the entry to edit and get an overview of the entire workflow (Fig. 5).

![mtbls520_workflow](mtbls520_instructions_05.jpg)
Fig. 5: Edit and run the MTBLS520 workflow

The window will reload and will show a graphical represention of the entire workflow. The next step is to run the workflow. In order to proceed, click on the little "gear" button in the upper right corner (Fig. 6).

![mtbls520_workflow](mtbls520_instructions_06.jpg)
Fig. 6: Run the workflow

On the next screen, select the input variables and input datasets as listed in Fig. 7. Make sure that you have selected the correct input data and variables. After you have selected the entries, click on “Run workflow” in the upper right corner. This will start the workflow.

The workflow should be started with the following parameter settings:

![mtbls520_workflow_settings](../galaxy/mtbls520_workflow_settings.jpg)
Fig. 7: Parameter settings for starting the entire workflow

Optional: In case you have selected "negative" mode when extracting the data in step 2 (module "mtbls520_02_extract", see Fig. 2), please make sure that you also select the corresponding "negative" mode in the modules "mtbls520_04_preparations" and "mtbls520_03_quality_control" (Fig. 8).

![mtbls520_workflow](mtbls520_instructions_07.jpg)
Fig. 8: Polarity option of the modules "mtbls520_04_preparations" and "mtbls520_03_quality_control"

Following is an overview of the Galaxy workflow for the MTBLS520 dataset (Fig. 9).

![mtbls520_workflow](../galaxy/mtbls520_workflow.jpg)
Fig. 9: Overview of the entire workflow

The processing of the entire workflow will take about 30 minutes, depending on load and the number of CPU cores of the workstation Galaxy is running.



## Publications
[1] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes. Nature Scientific Data. In Review.

[2] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Seasonal variation of secondary metabolites in nine different bryophytes. Ecology and Evolution. In Review.

[3] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Seasonal variation of secondary metabolites in 9 different moss and liverwort species. MetaboLights 520. https://www.ebi.ac.uk/metabolights/MTBLS520

[4] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Container for the Galaxy workflow to process the MTBLS520 dataset. DockerHub. https://hub.docker.com/r/korseby/mtbls520/

[5] Peters, K., Gorzolka, K., Bruelheide, H., & Neumann, S. (2018). Code for the computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes using the MTBLS520 dataset (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.1248510

