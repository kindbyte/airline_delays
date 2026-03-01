# ✈️ U.S. Airline Flight Delay Analysis & Prediction

## 📌 Project Overview
I wanted to understand what makes some flights late and others on time, so I dived into U.S. airline flight data and built a few models to see if we can actually predict delays (15+ minutes).  

The project covers:  
* Cleaning up messy real-world data in SQL  
* Exploring trends and patterns in Python  
* Engineering some sensible features  
* Trying out a few machine learning models  
* Figuring out what actually drives the delays  

---

## 🗄️ Data Cleaning & Preparation (SQL)
Flight data is messy — missing values, weird zeros, negative delays, duplicates… you know the drill. So I spent some time cleaning it up:  
* Removed rows where total arrivals were missing  
* Filled in rows where delays were essentially “cancelled/diverted” flights  
* Checked for duplicates and impossible negative delays  
* Exported a clean CSV for Python exploration  

Basically, I made sure the data wasn’t lying to me before modeling.

---

## 📊 Exploring the Data (Python)
Once the data was clean, I wanted to actually **see what was going on**:  
* Which months have more delays?  
* Which airports or airlines are consistently late?  
* What are the main reasons flights get delayed?  
* How does flight volume change year over year?  

All of this gave me a good sense of what features might actually matter.

---

## ⚙️ Feature Engineering
Some quick wins for features:  
* **Seasonality:** months as sin/cos cycles  
* **Scale:** log flight volumes, airport size proxy  
* **History matters:** average delay rate per airline  
* **Special events:** holiday season flag  

Target variable: `delayed_flag = 1` if `delay_rate ≥ 0.20`.  

Categorical features got one-hot encoded, numeric ones standardized — standard stuff, but makes models happy.

---

## 🤖 Modeling
I tried a few models and compared them:

| Model                  | ROC-AUC |
|------------------------|---------|
| Logistic Regression    | 0.74    |
| Random Forest          | 0.77    |
| Gradient Boosting      | 0.78    |
| XGBoost                | 0.80    |

XGBoost came out on top, so that’s the one I went with for the final evaluation.

---

## 📊 Key Visualizations

### Average Delay Rate by Month
![Average Delay by Month](figures/avg_delay_by_month.png)

### Airports with Highest Average Delay
![Airport by Average Delay](figures/airport_by_avg_delay.png)

### Top 10 Carriers by Delay Rate
![Top 10 Carrier Delays](figures/TOP_10_carrier_delays.png)

### Delay Causes for Top 5 Airlines
![Delay Causes - Top 5 Airlines](figures/Delay_Causes_Top_5_Airlines.png)

---

## 🔎 Model Interpretability
Curious why the model made the predictions it did, I used **SHAP** to peek inside:  
* Past airline performance matters a lot  
* Bigger airports with more flights tend to see more delays  
* Seasonal effects are surprisingly strong  
* Some carriers or airports just have consistent quirks  

---

## 🛠️ Tech Stack
* **SQL (DBeaver)** – cleaning & prepping messy data  
* **Python** – exploring, visualizing, modeling  
  * pandas, matplotlib, seaborn, scikit-learn, XGBoost, SHAP  
* **Tableau Public** – interactive dashboards to explore patterns  

---

## 🚀 What I Learned
Doing this end-to-end was super helpful:  
* Messy real-world data needs patience  
* Features really matter — even small ones can make a difference  
* XGBoost works really well out-of-the-box for this type of task  
* Visualizations help understand what the model is learning  

This project is a neat example of **data cleaning, EDA, modeling, and interpretation**, all in one place.  

