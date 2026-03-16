# Capacitación en Secuenciación por NGS y Análisis Bioinformático de *Salmonella* spp. para la Vigilancia en Salud Pública

Bienvenidos al repositorio del tutorial de la Capacitación en Secuenciación por NGS y análisis bioinformático de *Salmonella* spp. aplicada a la vigilancia en salud pública.

Este repositorio funciona como un recurso educativo que presenta los principales pasos del análisis bioinformático de patógenos entéricos, con un enfoque específico en el análisis genómico de *Salmonella* spp. utilizando datos de NGS (secuenciación de nueva generación).

El material está diseñado para apoyar el proceso de capacitación en genómica aplicada a la vigilancia epidemiológica, incluyendo análisis filogenéticos y exploración de datos genómicos.

## Descripción general 

En este repositorio encontrarás:

- Jupyter Notebooks utilizados en cada uno de los análisis bioinformáticos.

- Datos de ejemplo utilizados para los análisis filogenéticos.

- Figuras.



## Contexto 

La secuenciación de genomas completos mediante NGS se ha convertido en una herramienta clave para la vigilancia genómica de patógenos transmitidos por alimentos.

En particular, *Salmonella* spp. es uno de los patógenos bacterianos más relevantes para la salud pública a nivel mundial. El análisis genómico permite:

- Identificar relaciones filogenéticas entre aislamientos.

- Detectar brotes con mayor resolución.

- Caracterizar genes asociados a resistencia antimicrobiana y virulencia.

- Apoyar la toma de decisiones en vigilancia epidemiológica.

Este tutorial presenta un flujo de trabajo básico para el análisis bioinformático de datos de Salmonella spp.,incluyendo control de calidad, ensamblaje de genomas, caracterización genómica y análisis filogenético.


## Pipeline de análisis

El pipeline utilizado en este tutorial incluye las siguientes etapas principales:

1. **Control de calidad (QC)**

Evaluación y filtrado de las lecturas crudas de secuenciación utilizando:
- **FastQC:** evaluación de calidad de lecturas

- **TrimGalore:** recorte de adaptadores y filtrado de calidad

- **Kraken2:** clasificación taxonómica y control de contaminación

2. **Ensamblaje de genomas**

- **Unicycler:** ensamblaje de genomas bacterianos a partir de lecturas de secuenciación

3. **Caracterización y tipificación**

Identificación de características genómicas relevantes:

- **ARIBA:** detección de genes de resistencia antimicrobiana y MLST

- **SeqSero2:** predicción de serotipo de Salmonella

- **AMRFinderPlus:** detección de genes de resistencia antimicrobiana

4. **Análisis filogenético**

Construcción de relaciones evolutivas entre las muestras para explorar la diversidad genética y posibles agrupamientos epidemiológicos.

## Esquema del pipeline
![Pipeline](https://raw.githubusercontent.com/mecalderon/Tutorial_Panama/main/Figures/Pipeline.png)

## Instalación de herramientas
Clona el repositorio y ejecuta el script de instalación con los siguientes comandos:

```
git clone https://github.com/mecalderon/Tutorial_Panama.git
cd Tutorial_Panama
bash installing.sh
```

## Estructura del repositorio 

```bash
Tutorial_Panama
│
├── Figures/                # Figuras
├── notebooks/              # Jupyter notebooks utilizados para cada uno de los análisis
├── Dataset/                # Dataset a utilizar para análisis filogenéticos
├── installing.sh           # Archivo de instalación
└── README.md               # Este archivo

