# 🔢 Chi-Square Test for Categorical Variables

## 📘 Introduction
The **chi-square test** is a non-parametric statistical test used to determine if there is a significant **association between two categorical variables**. Commonly used in:
- Marketing (e.g., gender vs. brand preference)
- Social sciences
- Healthcare
- Education
- Quality control

---

## 🧪 Hypotheses

- **Null Hypothesis (H₀):** No association between variables (independent)
- **Alternative Hypothesis (H₁):** Significant association exists

---

## 🧮 Formula

\[
\chi^2 = \sum rac{(O_i - E_i)^2}{E_i}
\]

- \( O_i \): Observed frequency
- \( E_i \): Expected frequency
- \( E_i = rac{	ext{Row Total} 	imes 	ext{Column Total}}{	ext{Grand Total}} \)

\[
df = (r - 1) 	imes (c - 1)
\]

Where `r` = number of rows, `c` = number of columns

---

## ✅ Example 1: Weak Association

| Gender | Like | Dislike | Total |
|--------|------|---------|-------|
| Male   | 20   | 30      | 50    |
| Female | 25   | 25      | 50    |
| **Total** | 45 | 55      | 100   |

### 📊 Step-by-step:
- Expected frequencies all = 22.5 / 27.5
- \[
\chi^2 = 1.008,\ df = 1,\ 	ext{critical value} = 3.841
\]

### 💡 Interpretation:
Since **1.008 < 3.841**, fail to reject H₀ → no significant association.

---

## ✅ Example 2: Strong Association

| Status      | Disease | No Disease | Total |
|-------------|---------|------------|-------|
| Smoker      | 50      | 30         | 80    |
| Non-Smoker  | 20      | 100        | 120   |
| **Total**   | 70      | 130        | 200   |

### 📊 Step-by-step:
- Expected frequencies: 28, 52, 42, 78
- \[
\chi^2 = 44.33,\ df = 1,\ 	ext{critical value} = 3.841
\]

### 💡 Interpretation:
Since **44.33 > 3.841**, reject H₀ → strong significant association.

---

## 📌 Conclusion
- Use for **2+ categorical variables**
- Chi-square tells if **relationship is statistically significant**
- Requires **frequency (count) data**, not percentages

---

