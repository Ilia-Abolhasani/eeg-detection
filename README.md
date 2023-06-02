# EEG Hand Movement Detection with Artificial Neural Network (ANN)

This repository contains a MATLAB project for EEG hand movement detection using an Artificial Neural Network (ANN) model. The project supports both supervised and semi-supervised learning approaches.

## Introduction
This project aims to detect hand movements based on EEG signals using an ANN model. The dataset used in this project is stored in the `Dataset` directory. The code consists of several MATLAB files that perform various tasks such as creating the ANN model, training the model using supervised and semi-supervised learning, and testing the model on a separate dataset.

## Files and Directory Structure
- `Dataset`: Contains the EEG dataset used for training and testing.
- `CreateNet.m`: MATLAB script for creating the ANN model.
- `GetMSEs.m`: MATLAB script for calculating Mean Squared Errors (MSEs) during training.
- `Main.m`: Main MATLAB script that orchestrates the training and testing process.
- `NN.m`: MATLAB script defining the ANN architecture and training parameters.
- `SemiSupervised.m`: MATLAB script implementing the semi-supervised learning algorithm.
- `Supervised.m`: MATLAB script implementing the supervised learning algorithm.

## Usage
To use this project, follow these steps:
1. Clone the repository: `git clone https://github.com/Ilia-Abolhasani/eeg-detection.git`
2. Open MATLAB and navigate to the project directory.
3. Run the `Main.m` script to execute the main process.
4. The script will load the dataset, preprocess the data, create the ANN model, train it using supervised and semi-supervised learning, and test the model on a separate dataset.
5. The accuracy of the trained models will be displayed in the MATLAB console.

## Dependencie
This project has the following dependencie:
- MATLAB 

## References
If you use this code or dataset in your research or project, please consider citing the following paper:
- Dr. Cichocki's Lab (Lab. for Advanced Brain Signal Processing), BSI, RIKEN collaboration with Shanghai Jiao Tong University.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any inquiries or issues regarding this project, please contact [Ilia-Abolhasani](mailto:abolhasani.eliya@gmail.com).

