# 📱 Phone Price Prediction App

Welcome to the **Phone Price Prediction App**, a machine learning-powered web application built with **Streamlit** that predicts the price of a mobile phone based on various features.

---

## 🚀 Features

- 📷 **Camera Specifications**: Input values for **Front Camera Pixels** and **Rear Camera Pixels**.
- 🔋 **Battery Capacity**: Enter the phone's battery size.
- 💾 **Memory Details**: Specify **RAM** and **Internal Storage**.
- 🔍 **ML Model Integration**: Uses **Random Forest** for accurate price predictions.
- 🎨 **Interactive UI**: Built using **Streamlit** for a seamless user experience.

---

## 🏗 Project Structure

```
📂 Phone-Price-Prediction
│-- 📂 model                # Contains the trained ML models
│   ├── rf_model.pkl        # Trained Random Forest model
│   ├── scaler.pkl          # Preprocessing scaler
│
│-- 📂 data                 # (Optional) Dataset for training/testing
│
│-- 📂 app                  # Streamlit app
│   ├── App.py              # Main Streamlit application
│
│-- 📂 reports              # Power BI report for insights (if applicable)
│   ├── Powerbi 25.pbix     # Power BI report file
│
└── README.md               # Project documentation
```

---

## 🛠 Installation

1️⃣ Clone the repository:
```bash
git clone https://github.com/your-repo/Phone-Price-Prediction.git
cd Phone-Price-Prediction
```

2️⃣ Install dependencies:
```bash
pip install -r requirements.txt
```

3️⃣ Run the app:
```bash
streamlit run App.py
```

---

## 🔧 Technologies Used

- **Python** 🐍
- **Streamlit** 🖥️
- **Pandas** 📊
- **Joblib** 🏗️ (For model loading)
- **Scikit-Learn** 🤖 (Machine Learning)
- **Power BI** 📈 (For data visualization)

---

## 🎯 Usage

1. Run the application.
2. Input phone specifications:
   - **Front Camera Pixels**
   - **Rear Camera Pixels**
   - **RAM Size**
   - **Battery Capacity**
   - **Internal Memory**
3. Click on `Predict Price` and view the estimated phone price.

---

## 📊 Power BI Report

A **Power BI report** (`Powerbi 25.pbix`) is included to visualize phone price trends and insights based on historical data.

---

## 🤝 Contributing

If you’d like to contribute:
1. Fork the repo.
2. Create a new branch (`feature-branch`).
3. Commit changes.
4. Submit a PR.

---

## 🔗 Contact

For any inquiries or suggestions, feel free to reach out!

---

🌟 *If you find this project useful, don't forget to ⭐ the repository!* 🌟
