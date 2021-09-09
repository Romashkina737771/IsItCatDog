# Final Project_LSML2

## What's Included

Following folders and files are included in this zip file:
- pets - TensorFlow SavedModel Directory
- dog_vs_cat_classification_cnn.ipynb - model itself
- static - Empty directory which will be used for storing images by the flask app 
- templates - HTML templates are here
- app.ru - Flask app
- inference.py - extracts a deep-feature from each database image
- requirements.txt - python packages required
- Dockerfile - instructions for the app
- docer-compose.yaml - launch the docker instance which will serve the TensorFlow SavedModel 
- README.md -  this File 
- datasets are here https://www.kaggle.com/c/dogs-vs-cats/data

# Simple Image Search Engine

## Overview

- Simple image-based image search engine (dog or cat) using TensorFlow + Flask. We can launch the search engine just by running two python scripts.
- inference.py: This script extracts a deep-feature from each database image. 
- app.py: This script runs a web-server. You can send your query image to the server via a Flask web-interface. The server finds similar images to the query by a simple linear scan.
- Tested on Ubuntu 20.04

## The ways to launch the app

Method 1:
    - required Python3 be installed (I used python 3.7 and Tensorflow 2.1.0):
      
      $ pip3 install tensorflow==2.1.0 flask flask-bootstrap requests
      
      
    - launch the docker instance which will serve the TensorFlow SavedModel (pets folder):
      
      $ sudo docker run -p 8502:8502 --name pets -v "MY_SAVED_MODEL_PATH:/models/pets/1" -e MODEL_NAME=pets tensorflow/serving
      
    
    - launch the flask up:
      
      $ python3 app.py
      
    

Method 2:
    - work with Dockerfile and docker-compose.yaml:
      
      $ sudo docker-compose up
      
      
 The default port for flask is 5000, so we can access the app by going to localhost:5000 in the browser.


```python

```
