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

\[
\chi^2 = \sum rac{(O_i - E_i)^2}{E_i}
\]

Where:
- \( O_i \) = Observed frequency
- \( E_i \) = Expected frequency

\[
E_i = rac{(	ext{row total}) 	imes (	ext{column total})}{	ext{grand total}}
\]

Degrees of freedom:

\[
df = (r - 1)(c - 1)
\]

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

\[
\chi^2 = rac{(20 - 22.5)^2}{22.5} + rac{(30 - 27.5)^2}{27.5} + rac{(25 - 22.5)^2}{22.5} + rac{(25 - 27.5)^2}{27.5} = 1.008
\]

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

\[
\chi^2 = rac{(50 - 28)^2}{28} + rac{(30 - 52)^2}{52} + rac{(20 - 42)^2}{42} + rac{(100 - 78)^2}{78} = 44.33
\]

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
