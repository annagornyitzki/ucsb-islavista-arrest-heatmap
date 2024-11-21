

# UCSB Isla Vista Arrest Location Heatmaps

This project created heatmaps to visualize arrest patterns in Isla Vista, CA, from September to November 2024, using SQLite to store and query location data and integrating GeoPy with Leaflet to map and display the data for an article in UCSB's student-run newspaper, the *Daily Nexus*.

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

This project is licensed under the MIT License - see the LICENSE.md file for details

## Acknowledgments
- *Daily Nexus*: For supporting this project and publishing the accompanying article.
- UC Santa Barbara Police Department: For providing the crime data used in this analysis.
