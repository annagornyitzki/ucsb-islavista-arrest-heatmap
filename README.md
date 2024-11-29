

# UCSB Isla Vista Arrest Location Heatmaps

This project involves creating heatmaps to visualize arrest patterns in Isla Vista, CA, from September to November 2024, using SQLite to store and query location data and integrating GeoPy with Leaflet to map and display the data for an article in UCSB's student-run newspaper, the *Daily Nexus*.

*include screenshot of heatmap*

## Project Description

The goal of this project was to create detailed heatmaps to visualize the spatial distribution and concentration of arrests in Isla Vista, CA, during the early academic months of September to Novemeber 2024. The heatmaps were developed to  accompany and enhance an article written in the *Daily Nexus*, UC Santa Barbara's independent, student-run newspaper. The article, "*Substance-related and theft-related arrests rise in Isla Vista over the last two months*", was written by me (Anna Gornyitzki) and Aastha Prakash.

## *Daily Nexus* Article
https://dailynexus.com/2024-11-14/substance-related-and-theft-related-arrests-rise-in-isla-vista-over-the-last-two-months/

## Getting Started

### Dependencies

* SQLite Database
* Jupyter Notebooks
* Python Libraries
* Data

### Installing
Disclaimer: This is an installation guide for macOS.

**Step 1: Install SQLite using Homebrew (a package manager for macOS)**
```
brew install sqlite
```

**Step 2: Install Database tool such as DBeaver**

https://dbeaver.io/download/

**Step 3: Install Jupyter**
1. Install Python
   Python 2.x is usually pre-installed on macOS, but you'll want to install latest version (Python 3.x) using Homebrew.
```
brew install python
```
2. Verify Python Installation
```
python --version # or python3 --version on some systems
```
3. Verify pip Installation
```
pip --version # or pip3 --version on some systems
```
If pip is not installed do it manually
```
python -m ensurepip --upgrade
```
3. Install Jupyter through pip
```
pip install jupyterlab
```

## Step by Step Guide

### Prepare and Load Data
### 1. Extract Data from PDF to CSV
1. **Tool Used:** [Tabula](https://tabula.technology/)  
2. **Steps:**
   - Download the PDF from [UCSB Police Department's Daily Crime and Fire Log](https://www.police.ucsb.edu/sites/default/files/UCSB_Crime_Fire_Log.pdf) containing the tabular data.
   - Open Tabula and upload the PDF.
   - Select the table(s) to extract.
   - Export the selected table(s) to a CSV file.
   - Save the CSV file for further processing.

### 2. Import CSV into DBeaver
1. **Tool Used:** [DBeaver](https://dbeaver.io/)  
2. **Steps:**
   - Open DBeaver and create a new SQLite database.
   - Use the `CSV Import Wizard` in DBeaver to load the CSV into a table:
     - Go to **Database > Tools > Import Data**.
     - Select the CSV file and map its columns to table columns.
     - Finish the wizard to load the data into the database.
   - Verify the data is correctly imported by running a simple `SELECT` query.

### 3. Test SQLite Queries
1. Use DBeaver to test various SQLite queries on the imported table:
   - Perform data filtering, aggregation, and transformations to analyze the data.
   - Save the queries that yield useful insights for later use in Jupyter Notebook.

### 4. Export Data for Visualization
1. Once the data is finalized, export it as a cleaned CSV:
   - Use DBeaver's **Export Data** feature to save the query results as a CSV file.
   - Save this cleaned CSV file for visualization.
     
### Using Data to Create Heatmaps
### 5. Create Heatmaps in Jupyter Notebook
1. **Tool Used:** [Jupyter Notebook](https://jupyter.org/)  
2. **Steps:**
   - Open a new Jupyter Notebook and load the exported CSV:
     ```python
     import pandas as pd
     data = pd.read_csv("cleaned_data.csv")
     ```
   - Use libraries like `matplotlib` or `seaborn` to create heatmaps:
     ```python
     import seaborn as sns
     import matplotlib.pyplot as plt

     plt.figure(figsize=(10, 8))
     sns.heatmap(data.corr(), annot=True, cmap="coolwarm")
     plt.title("Heatmap of Data Correlations")
     plt.show()
     ```
   - Save your notebook with the visualizations.

### 6. Documentation and Visualization
1. Document the steps, observations, and insights in your Jupyter Notebook.
2. Save the notebook as an `.ipynb` file and upload it to this repository.


### Prepare and Load Data
My underlying 
csv to database
how to create table
### Using Data to Create Heatmaps
start jupyter notebook
you can find files under this directory in repo
breakdown what is happening inside jupyer 
1. creating data frames
2. 2. tranlsating address to lat longs
   3. visualizing them
4. in notebook the different visualizations are shown and analyzed

5. **SIGNIFICNCE OF FOLIUM AND GOOGLE VERSION*

## Contact
Anna Gornyitzki: annagornyitzki@gmail.com

Project Link: https://github.com/annagornyitzki/ucsb-islavista-arrest-heatmap
## License

This project is licensed under the MIT License - see the LICENSE.txt file for details

## Acknowledgments
- *Daily Nexus*: For supporting this project and publishing the accompanying article.
- UC Santa Barbara Police Department: For providing the crime data used in this analysis.
