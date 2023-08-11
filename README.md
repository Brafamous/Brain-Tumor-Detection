# Brain Tumor Detection Using Machine Learning

A brain tumor is an abnormal growth of tissue in the brain or central spine that can disrupt proper brain function. It is the abnormal growth of tissues in brain. If the tumor originates in the brain, it is called a primary brain tumor. Primary brain tumors can be benign or malignant. Benign brain tumors are not cancerous.

### Project Scope

The Brain Tumor Detection Project is an artificial intelligence project designed to detect the presence of brain tumors in medical images such as MRI scans. This project utilizes deep learning techniques to analyze the images and classify them as either having a tumor or being tumor-free.

[![Brain](https://github.com/Brafamous/Brain-Tumor-Detection/blob/main/brain.png)](https://www.youtube.com/watch?v=cSeXJKSQpiI)


### Dataset
The data for this project is available at [kaggle](https://www.kaggle.com/datasets/ahmedhamada0/brain-tumor-detection). The dataset contains 3 folders, _Yes, No and Pred_ which contains 3060 Brain MRI Images.

|   Folder   |  Description    |
|------------|-----------------|
|Yes    |   It has 1500 Brain MRI Images that are tumorous  |
|No     |   It has 1500 Brain MRI Images that are non-tumorous  |
|Pred   |   It has a mixture of 60 Brain MRI Images for prediction |



### Requirements
|- Python |- Tensoflow |- Flask |- OpenCV |
|---------|------------|--------|---------|
|- Sklearn|- Matplotlib|- Numpy |         |


### The Network Architecture
![Architecture](https://github.com/Brafamous/Brain-Tumor-Detection/blob/main/bdt_detection.png)

## Network Description
* The model is a Convolutional Neural Network (CNN) architecture.
* It consists of multiple convolutional layers followed by max pooling layers.
* The first convolutional layer has 32 filters, a kernel size of (3,3), and an input shape of (input_size, input_size, 3).
* The activation function used is ReLU (Rectified Linear Unit).
* Max pooling layers are added after each convolutional layer with a pool size of (2,2).
* Additional convolutional layers are added with 32 and 64 filters respectively, both using '_he_uniform_' kernel initializer.
* The output from the last convolutional layer is flattened.
* A fully connected layer with 64 units and ReLU activation function is added.
* A dropout layer with a dropout rate of 0.5 is included for regularization.
* The output layer has 1 unit and uses a sigmoid activation function.
* This architecture is suitable for binary classification tasks.

## Notebook Visualization
[Click here to view the notebook on nbviewer](https://nbviewer.jupyter.org/github/Brafamous/Brain-Tumor-Detection/blob/main/BTD_Training.ipynb)