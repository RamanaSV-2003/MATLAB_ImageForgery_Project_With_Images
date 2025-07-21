
# Image Forgery Detection Using MATLAB

This project detects image splicing forgeries using MATLAB. It employs four key feature extraction techniques (Fractal Entropy, LBP, Skewness, Kurtosis), followed by SVM classification to distinguish between authentic and tampered images.

## 🧠 Core Idea
- Convert input image to YCbCr color space
- Extract texture features from Cb & Cr channels
- Train a Support Vector Machine (SVM) to detect forgery

## 🔧 Requirements
- MATLAB R2021a or later
- Image Processing Toolbox
- SVM Classifier

## 📁 Files
- `code/image_forgery_detection.m`: Main MATLAB code
- `input/`: Folder to store original and tampered images
- `thesis/B6_MAIN_PAGES.pdf`: Front matter of thesis
- `thesis/THESIS-6.pdf`: Full thesis document

## 🚀 How to Run
1. Place your original and tampered images into the `input/` folder
2. Open MATLAB and run:
   ```matlab
   cd('code')
   image_forgery_detection
   ```
3. Visual output will be displayed and forgery detection results shown.

## 👨‍💻 Contributors
- S. Venkata Ramana
- S. Nayab Rasool
- J. Sandeep Kumar
- Y. Sai Narasimha Reddy
- K. Vinay Kumar Reddy

Under the guidance of Mr. M. Sreenivasulu, Asst. Professor, Dept. of ECE, VITS

---
