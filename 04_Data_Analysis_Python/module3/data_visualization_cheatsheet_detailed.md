# 📊 Data Visualization in Python

## 🧰 Libraries

### 📎 matplotlib
`matplotlib` is a foundational plotting library in Python. It provides complete control over plot appearance and is widely used in data analysis and scientific computing.

```python
import matplotlib.pyplot as plt
%matplotlib inline  # Displays plots inline in Jupyter notebooks
```

### 📎 seaborn
`seaborn` is built on top of matplotlib and provides a high-level interface for drawing attractive and informative statistical graphics.

```python
import seaborn as sns
```

---

## 🔷 matplotlib Plot Types

### 1. Line Plot
Used to visualize trends over a continuous variable like time.

```python
plt.plot(x, y)
```
**Use Case:** Visualizing time series data such as stock prices or temperature over days.

---

### 2. Scatter Plot
Displays the relationship between two numeric variables as points on a Cartesian plane.

```python
plt.scatter(x, y)
```
**Use Case:** Correlation analysis between variables like height and weight.

---

### 3. Histogram
Shows the distribution of a numeric variable by dividing the data into bins.

```python
plt.hist(x, bins=10, edgecolor='black')
```
**Use Case:** Checking for skewness or normal distribution of exam scores.

---

### 4. Bar Plot
Used to compare quantities across different categories.

```python
plt.bar(x, height)
```
**Use Case:** Comparing average sales across different regions.

---

### 5. Pseudocolor Plot
Displays matrix or grid data using color to represent values.

```python
plt.pcolor(C, cmap='viridis')
```
**Use Case:** Visualizing correlation matrices or pivot tables.

---

## 🔷 seaborn Plot Types

### 1. Regression Plot
Fits and visualizes a regression line with confidence intervals on a scatter plot.

```python
sns.regplot(x='col1', y='col2', data=df)
```
**Use Case:** Analyzing the relationship between advertising spend and sales.

---

### 2. Box and Whisker Plot
Visualizes the distribution, median, quartiles, and outliers of a dataset.

```python
sns.boxplot(x='category', y='value', data=df)
```
**Use Case:** Comparing income distributions across different job titles.

---

### 3. Residual Plot
Plots the residuals (errors) of a regression model to assess its fit.

```python
sns.residplot(x='x_col', y='y_col', data=df)
```
**Use Case:** Diagnosing problems in linear regression models.

---

### 4. KDE Plot (Kernel Density Estimate)
Estimates and plots the probability density function of a continuous variable.

```python
sns.kdeplot(data=df['column'])
```
**Use Case:** Understanding the distribution shape of a dataset beyond histograms.

---

### 5. Distribution Plot
Combines histogram and KDE into one plot for analyzing the distribution of data.

```python
sns.distplot(df['column'], hist=False)
```
**Use Case:** Displaying smooth curves for data such as test scores or customer ages.

---

## 📌 Interpretation Tips

- **Boxplot:** Great for detecting outliers using IQR.
- **Regression plots:** Check for trend lines and confidence intervals.
- **Residual plots:** A flat residual plot suggests a good linear model.
- **Histograms/KDE/Distplots:** Help visualize data distributions and compare datasets.

