# Factors Associated with 30-Day Hospital Readmission in Diabetic Patients

## Objective

This project analyzes hospital encounter data for diabetic patients to identify patterns associated with 30-day readmission. The goal is to explore whether patient demographics, healthcare utilization history, laboratory testing, and treatment changes are associated with increased likelihood of readmission.

---

## Dataset

The dataset contains **25,000 hospital encounters**, where each row represents a single admission.

Key variables include:

- `age` — Patient age group  
- `time_in_hospital` — Length of stay  
- `n_lab_procedures` — Number of lab procedures  
- `n_procedures` — Number of other procedures  
- `n_medications` — Number of medications prescribed  
- `n_outpatient` — Prior outpatient visits  
- `n_inpatient` — Prior inpatient visits  
- `n_emergency` — Prior emergency visits  
- `medical_speciality` — Attending specialty (contains missing values)  
- `diag_1`, `diag_2`, `diag_3` — Diagnosis codes  
- `glucose_test` — Glucose testing performed (Y/N)  
- `a1c_test` — A1C testing performed (Y/N)  
- `change` — Diabetic medication regimen changed (Y/N)  
- `diabetes_med` — Prescribed diabetic medication (Y/N)  
- `readmitted` — Readmitted within 30 days (Y/N)

---

## Key Definitions

- **Readmission** refers to hospital readmission within 30 days.
- Data cleaning included standardizing categorical values and handling missing entries.
- Analysis focuses on associations rather than causal inference.

---

## Findings

### Overall Readmission Rate
The overall 30-day readmission rate is **47.02%** (11,754 of 25,000 encounters).

---

### Age and Readmission
Readmission rates increase gradually with age, rising from approximately **44% (ages 40–60)** to nearly **50% (ages 80–90)**. The slight decrease in the 90–100 age group likely reflects smaller sample size (n=750).

---

### Prior Inpatient Utilization
Prior inpatient history demonstrated the strongest association with readmission:

- **0 prior visits:** 39.86%  
- **3–5 prior visits:** 73.47%  
- **6+ prior visits:** ~89%  

This suggests historical hospitalization may indicate ongoing clinical instability or chronic disease burden.

---

### Length of Stay
Readmission rates increase modestly with longer hospital stays. Patients hospitalized for 1 day had a readmission rate of ~41%, while those staying 7–10 days had rates near 50–51%. The magnitude of this effect is smaller than prior inpatient utilization.

---

### Medication Changes
Patients whose diabetic medications were changed during admission had a readmission rate of **49.35%**, compared to **45.02%** among those without medication changes. This modest difference (~4 percentage points) may reflect greater clinical complexity.

---

## Summary

Among all variables analyzed, **prior inpatient utilization showed the strongest association with readmission risk**. Length of stay and medication changes demonstrated moderate associations, while age showed a gradual but smaller increase in risk.

These findings suggest utilization history may be a valuable indicator when identifying higher-risk diabetic patients.

---

## Files

- `readmissions_analysis.sql` — Complete reproducible SQL analysis
