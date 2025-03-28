# Data Wrangling Cheat Sheet

## Replace Missing Data

### Replace with Most Frequent Value:
```python
MostFrequentEntry = df['attribute_name'].value_counts().idxmax()
df['attribute_name'].replace(np.nan, MostFrequentEntry, inplace=True)
```

### Replace with Mean:
```python
AverageValue = df['attribute_name'].astype(<data_type>).mean(axis=0)
df['attribute_name'].replace(np.nan, AverageValue, inplace=True)
```

---

## Fix Data Types
```python
df[['attribute1_name', 'attribute2_name', ...]] = \
    df[['attribute1_name', 'attribute2_name', ...]].astype('data_type')
# data_type can be int, float, str, etc.
```

---

## Data Normalization
```python
df['attribute_name'] = df['attribute_name'] / df['attribute_name'].max()
```

---

## Binning
```python
bins = np.linspace(min(df['attribute_name']), max(df['attribute_name']), n)  # n is the number of bins
GroupNames = ['Group1', 'Group2', 'Group3', ...]
df['binned_attribute_name'] = pd.cut(df['attribute_name'], bins, labels=GroupNames, include_lowest=True)
```

---

## Change Column Name
```python
df.rename(columns={'old_name': 'new_name'}, inplace=True)
```

---

## Create Indicator Variables (Dummy Variables)
```python
dummy_variable = pd.get_dummies(df['attribute_name'])
df = pd.concat([df, dummy_variable], axis=1)
```

---

*Source: cognitiveclass.ai*

