# Student Outcome Prediction using K-Nearest Neighbors (KNN)

## Overview
This project implements a K-Nearest Neighbors (KNN) classifier to predict student outcomes based on various features from a dataset in MATLAB. Making graph and showing metrics. The primary objective is to categorize students into three outcomes: **Enrolled**, **Graduated**, and **Dropped Out**.

## Dataset
The dataset used in this project consists of various features that represent student attributes, with the last column indicating the student’s outcome. The data is organized as a numeric matrix with dimensions \(4424\37\), where each row corresponds to a student and each column represents a different feature.

## Implementation
1. **Data Loading**: The dataset is loaded into the MATLAB environment.
2. **Feature Extraction**: Features and labels are separated, with features being all columns except the last and labels being the last column.
3. **KNN Training**: The KNN classifier is trained using the `fitcknn` function, with the number of neighbors set to five.
4. **Prediction**: The model makes predictions based on the same dataset.
5. **Evaluation**: The performance of the model is evaluated using a confusion matrix, from which accuracy, precision, and recall are calculated for each class.

## Final Results
The KNN classifier achieved the following results:

- **True Positives (TP)**:
  - Enrolled: 1035
  - Graduated: 1943
  - Dropped Out: 240

- **Confusion Matrix**:
  
  |                  | **Predicted Enrolled** | **Predicted Graduated** | **Predicted Dropped Out** |
  |------------------|------------------------|--------------------------|----------------------------|
  | **Actual Enrolled**   | 1035                   | 332                      | 54                         |
  | **Actual Graduated**  | 193                    | 1943                     | 73                         |
  | **Actual Dropped Out**| 200                    | 354                      | 240                        |

- **Overall Accuracy**: 72.74% 

- **Class-specific Metrics**:
  - **Class 0 (Enrolled)**: Precision: 72.48%, Recall: 72.84%
  - **Class 1 (Graduated)**: Precision: 73.91%, Recall: 87.96%
  - **Class 2 (Dropped Out)**: Precision: 65.40%, Recall: 30.23%

## Conclusion
The KNN classifier effectively predicted student outcomes, with notable strengths in identifying graduated students. However, challenges with misclassifications indicate the need for further model refinement. Future work may involve feature engineering and exploring alternative algorithms to enhance predictive capabilities.

## Usage
To run this project, ensure you have MATLAB installed with the necessary toolboxes for machine learning. Load the dataset and execute the provided code to train the KNN model and evaluate its performance.

## Acknowledgments
Thank you for your interest in this project. For questions or contributions, please feel free to reach out.
