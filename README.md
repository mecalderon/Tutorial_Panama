# Capacitación en Secuenciación por NGS y Análisis Bioinformático de *Salmonella* spp. para la Vigilancia en Salud Pública

Bienvenidos al repositorio del tutorial de la Capacitación en Secuenciación por NGS y análisis bioinformático de *Salmonella* spp. aplicada a la vigilancia en salud pública.

Este repositorio constituye un recurso educativo que describe, paso a paso, el proceso de secuenciación mediante NGS y el análisis bioinformático de patógenos entéricos, con énfasis en el análisis genómico de *Salmonella* spp. a partir de datos de secuenciación de nueva generación.

## Descripción general 

En este repositorio encontrarás:

- Protocolos estándar de laboratorio.

- Jupyter Notebooks utilizados en cada etapa del análisis bioinformático.

- Notebooks destinados al postprocesamiento de los datos.

- Conjuntos de datos de ejemplo para realizar análisis filogenéticos.

- Figuras.



## Contexto 

La secuenciación de genomas completos mediante NGS se ha consolidado como una herramienta fundamental para la vigilancia genómica de patógenos transmitidos por alimentos.

En particular, *Salmonella* spp. es uno de los patógenos bacterianos de mayor relevancia para la salud pública a nivel mundial. El análisis genómico permite:

- Identificar relaciones filogenéticas entre aislamientos.

- Detectar brotes con mayor resolución.

- Caracterizar genes asociados a resistencia antimicrobiana y virulencia.

- Apoyar la toma de decisiones en vigilancia epidemiológica.

Este tutorial presenta un flujo de trabajo básico para el análisis bioinformático de datos de *Salmonella* spp., incluyendo control de calidad, ensamblaje de genomas, caracterización genómica y análisis filogenético.

## **Pipeline de análisis bioinformático**

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
├── Caso_Estudio/              # Caso de estudio enfocado en genómica comparativa
├── Figures/                   # Figuras
├── Notebooks_pipeline/        # Notebooks utilizados en cada etapa del pipeline bioinformático
├── Notebooks_procesamiento/   # Notebooks para el postprocesamiento de datos
├── SOPs                       # Protocolos estándar de laboratorio
├── installing.sh              # Script de instalación
└── README.md                  # Archivo principal de documentación

