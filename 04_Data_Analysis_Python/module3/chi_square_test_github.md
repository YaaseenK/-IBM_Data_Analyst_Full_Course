# 📊 Chi-Square Test for Categorical Variables

## 🔍 Introduction
The **Chi-Square Test** is a statistical method used to determine if there is a **significant association** between two **categorical variables**. It is widely applied in:
- Social sciences
- Healthcare
- Marketing
- Education
- Manufacturing

---

## 📘 Concept
The test checks whether **observed frequencies** significantly differ from **expected frequencies** under the assumption of independence.

---

## 🧪 Hypotheses

- **Null Hypothesis (H₀):** No association between variables (they are independent).
- **Alternative Hypothesis (H₁):** Significant association between the variables.

---

## 🧮 Chi-Square Formula

**Chi-Square Statistic**:  
**χ² = Σ((Oᵢ - Eᵢ)² / Eᵢ)**

Where:
- Oᵢ = Observed frequency
- Eᵢ = Expected frequency

**Expected Frequency**:  
**Eᵢ = (row total × column total) / grand total**

**Degrees of Freedom**:  
**df = (r - 1) × (c - 1)**

---

## 📋 Applications

- **Market Research:** Demographics vs. product preference
- **Healthcare:** Lifestyle vs. disease outcome
- **Education:** Teaching method vs. student performance
- **Quality Control:** Process condition vs. defect rate

---

## 🧑‍🔬 Example 1: Weak Association

**Research Question:** Is there an association between **gender** and **product preference**?

### 🔢 Data

| Gender | Like | Dislike | Total |
|--------|------|---------|-------|
| Male   | 20   | 30      | 50    |
| Female | 25   | 25      | 50    |
| **Total** | 45 | 55      | 100   |

### 📊 Expected Frequencies

- Male-Like: (50×45)/100 = 22.5
- Male-Dislike: (50×55)/100 = 27.5
- Female-Like: (50×45)/100 = 22.5
- Female-Dislike: (50×55)/100 = 27.5

### 🧮 Chi-Square Calculation

χ² = (20 - 22.5)² / 22.5 + (30 - 27.5)² / 27.5  
     + (25 - 22.5)² / 22.5 + (25 - 27.5)² / 27.5  
χ² = 1.008

### 🎯 Interpretation

- df = 1  
- Critical value @ 0.05 significance = 3.841  
- **Conclusion:** 1.008 < 3.841 → Fail to reject H₀ → **No significant association**

---

## 🧪 Example 2: Strong Association

**Research Question:** Is there a link between **smoking status** and **lung disease**?

### 🔢 Data

| Smoking Status | Disease | No Disease | Total |
|----------------|---------|------------|-------|
| Smoker         | 50      | 30         | 80    |
| Non-Smoker     | 20      | 100        | 120   |
| **Total**      | 70      | 130        | 200   |

### 📊 Expected Frequencies

- Smoker-Disease: (80×70)/200 = 28
- Smoker-No Disease: (80×130)/200 = 52
- Non-Smoker-Disease: (120×70)/200 = 42
- Non-Smoker-No Disease: (120×130)/200 = 78

### 🧮 Chi-Square Calculation

χ² = (50 - 28)² / 28 + (30 - 52)² / 52  
     + (20 - 42)² / 42 + (100 - 78)² / 78  
χ² = 44.33

### 🎯 Interpretation

- df = 1  
- Critical value @ 0.05 significance = 3.841  
- **Conclusion:** 44.33 > 3.841 → Reject H₀ → **Strong association exists**

---

## ✅ Summary

| Element             | Purpose                                      |
|---------------------|----------------------------------------------|
| Test Type           | Non-parametric (Chi-square test of independence) |
| Data Type           | Categorical only                             |
| Assumption          | Random sampling, independence of observations |
| Output              | Chi-square statistic & p-value               |

---

**The Chi-Square Test helps uncover meaningful relationships in categorical data.**
