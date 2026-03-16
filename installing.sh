echo "#######     starting the installation of the packages required for INCIENSA training #####################"
echo "#######     after finished, there will be three environements created:                   #################"
echo "######################        gubbienvs, microenv, srst2_env               ###############################"
conda create -n gubbienvs -y
source activate gubbienvs
mamba install "gubbins=2.3.4" -y
conda deactivate

echo "################### gubbins=2.3.4 environment installed    ###############"
echo "################ to activate use: conda activate gubbins #################"

echo "                                                                          "
echo "################ starting microenv creation and installation #############"
conda create -n microenv -y
source activate microenv

mamba install "kraken2>=2.1.2" "fastqc>=0.11.9" "trim-galore=0.6.6" prokka iqtree "snp-sites>=2.5.1" "snp-dists=0.8.2" quast  bedtools "unicycler>=0.5.0" "snippy>=4.6.0" "ncbi-amrfinderplus==3.10.30" "perl>=5.32.1,<6.0a0" "mafft==7.515" -y

echo "############# microenv environment created and were installed the following packages: ##################"
echo "########## kraken2>=2.1.2 fastqc>=0.11.9 trim-galore=0.6.6 prokka iqtree snp-sites>=2.5.1 ##############"
echo "########### snp-dists=0.8.2 quast  bedtools seqsero2  unicycler>=0.5.0 snippy>=4.6.0 ###################"
echo "###################### ncbi-amrfinderplus==3.10.30 perl>=5.32.1,<6.0a0 mafft==7.515 ####################"
echo "################################### activate using: conda activate microenv ############################"

echo "                                      "
echo "                                      "
echo "###### is requiered to write jovyan username at terminal to complete  ##########"
sudo apt-get update
sudo apt-get install roary -y
echo "jovyan"

conda deactivate
echo "##################### roary were installing within microenv environnent  #######################"


echo "################ starting ariba creation and installation #############"
conda create -n ariba_env -y
source activate ariba_env
sudo  apt-get update
sudo apt-get install -y python3-dev python3-pip python3-tk zlib1g-dev bowtie2 mummer cd-hit
export ARIBA_CDHIT=cdhit-est
sudo pip3 install ariba
conda deactivate
echo "###################### ariba_env environment created and ariba was installed ######################"
echo "############################# activate using: conda activate ariba_env ############################"


echo "################ starting seqsero2 creation and installation #############"
conda create -n seqsero2_env -y
source activate seqsero2_env
mamba install seqsero2=1.2.1 -y
conda deactivate
echo "###################### seqsero2_env environment created and seqsero2 was installed ######################"
echo "############################# activate using: conda activate seqsero2_env ############################"


echo "######################## creating srst2 environment this will take some time #############################"

conda create -n srst2_env python=2.7 -y 

source activate srst2_env

conda install srst2 -y

conda deactivate
echo "###################### srst2_env environment created and srst2 was installed ######################"
echo "############################# activate using: conda activate srst2_env ############################"

echo "###################### AMRFinderPlus Database download ######################"
conda activate microenv
amrfinder --update

conda deactivate