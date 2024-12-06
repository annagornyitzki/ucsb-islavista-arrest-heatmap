

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

**You can skip these steps and access the CSV in [Data folder](https://github.com/annagornyitzki/ucsb-islavista-arrest-heatmap/tree/main/Data)**

### 2. Import CSV file into relational database
Import CSV file into SQLite using DBeaver
1. **Tool Used:** [DBeaver](https://dbeaver.io/)  
2. **Steps:**
   - Create a new SQLite database named arrestData.db.
   - Use the `CSV Import Wizard` in DBeaver to load the CSV into a table named UCSB_Crime_Fire_Log:
     - Go to **Database > Tools > Import Data**.
   - Verify the data is correctly imported by running a `SELECT * FROM UCSB_Crime_Fire_Log ucfl;` query.

**You can access table definition arrestDataTable.sql in [Database folder](https://github.com/annagornyitzki/ucsb-islavista-arrest-heatmap/tree/main/Database)**

### 3. Test SQLite Queries
1. Use DBeaver to test various SQLite queries on the imported table:
   - Perform data filtering, aggregation, and transformations to analyze the data.
   - Save the queries that yield useful insights for later use in Jupyter Notebook.

**You can access SQL queries arrestQueries.sql in [Database folder](https://github.com/annagornyitzki/ucsb-islavista-arrest-heatmap/tree/main/Database)**

### Using Data to Create Heatmaps
### 4. Create Heatmaps in Jupyter Notebook
1. **Tool Used:** [Jupyter Notebook](https://jupyter.org/)  
2. **Steps:**

explain what jupyter notebooks i have in my repo
start this chapter saying i have three approaches of visualizing the data. each approach has one notebook. the first approach im doing is displaying generic heatmap with no counts. second appraoch is counts. then clusters. 

instead of steps say that the specific steps of how to visualize them are written in the jupyter notebooks

appraoch number one consits of these high level steps
then call out steps
there are more ways of retrieving lat long because google there is less data maniuplation manually for me in first notebook
compare two methods and describe why choose google

notebook number two
(MAIN DIFFERENTIATOR IS ADDING COUNTS INTO QL QUERiES)


notebook number three
(LETTING PYTHON DO COUNTS, CLUSETER DOES COUNT FOR ME)




## Contact
Anna Gornyitzki: annagornyitzki@gmail.com

Project Link: https://github.com/annagornyitzki/ucsb-islavista-arrest-heatmap
## License

This project is licensed under the MIT License - see the LICENSE.txt file for details

## Acknowledgments
- *Daily Nexus*: For supporting this project and publishing the accompanying article.
- UC Santa Barbara Police Department: For providing the crime data used in this analysis.
