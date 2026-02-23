Factors Associated with 30-Day Hospital Readmission in Diabetic Patients

Objective
This project analyzes hospital encounter data for diabetic patients to identify patterns associated with 30-day readmission. The goal is to explore whether patient demographics, healthcare utilization history, laboratory testing, and treatment changes are associated with increased likelihood of readmission.
Dataset
The dataset contains hospital encounter-level data for diabetic patients. Each row represents a single hospital encounter.
Key variables include:
age — Patient age group
time_in_hospital — Length of stay
n_lab_procedures — Number of lab procedures during encounter
n_procedures — Number of other procedures
n_medications — Number of medications prescribed
n_outpatient — Number of prior outpatient visits
n_inpatient — Number of prior inpatient visits
n_emergency — Number of prior emergency visits
medical_speciality — Attending specialty (contains missing values)
diag_1, diag_2, diag_3 — Primary and secondary diagnoses
glucose_test — Whether glucose testing was performed (Y/N)
a1c_test — Whether A1C testing was performed (Y/N)
change — Whether diabetic medication regimen changed (Y/N)
diabetes_med — Whether patient was prescribed diabetic medication (Y/N)
readmitted — Whether patient was readmitted within 30 days (Y/N)

Key Definitions
For this analysis:
Readmission refers to a hospital readmission within 30 days (based on the readmitted variable).
Encounters with missing or unclear values were handled during cleaning.
Analysis focuses on associations rather than causation. 
What is the overall 30-day readmission rate among diabetic patients?
Overall readmission rate is 47.02% (11,754 of 25,000 encounters). Because readmission is relatively common in this dataset, subsequent analysis focuses on how readmission rates vary across utilization history, length of stay, age, and medication-related factors.
Does patient age group appear associated with higher readmission rates?
Readmission rates increase with age, rising from approximately 44% in patients aged 40–60 to nearly 50% in patients aged 80–90. This suggests that older diabetic patients may face increased risk of readmission, potentially due to greater comorbidity burden or clinical complexity. The slight decrease observed in the 90–100 age group may reflect a smaller sample size (n=750) rather than a true risk reduction.
Are patients with a history of prior inpatient visits more likely to be readmitted?
Prior inpatient utilization shows a strong association with readmission risk. Patients with no prior inpatient visits had a 39.86% readmission rate, well below the dataset baseline (47.02%). In contrast, patients with 3–5 prior inpatient visits had a 73.47% readmission rate, and those with 6 or more prior visits approached 90% readmission. The 6+ prior inpatient group has a smaller sample size (n=226), but still demonstrates a markedly elevated readmission rate. This suggests prior hospitalization history may be a significant indicator of ongoing clinical instability or chronic disease burden.
Is length of stay during the hospital encounter associated with readmission?
Readmission rates increase modestly with length of hospital stay. Patients hospitalized for 1 day had a readmission rate of approximately 41%, while those staying 7–10 days had rates near 50–51%. This suggests that longer hospital stays may reflect greater clinical severity, which may be associated with increased readmission risk. However, the magnitude of this effect is smaller compared to prior inpatient utilization.
Does a change in diabetic medication during admission relate to readmission rates?
Patients whose diabetic medications were changed during hospitalization had a readmission rate of 49.35%, compared to 45.02% among those with no medication change. While the difference is modest (~4 percentage points), it suggests that medication adjustments may reflect greater clinical instability or more complex disease management, which may be associated with increased readmission risk.
Summary
Among all variables analyzed, prior inpatient utilization demonstrated the strongest association with 30-day readmission risk, suggesting that historical healthcare utilization may be a key indicator of ongoing clinical instability. Length of stay and medication changes showed moderate associations, while age demonstrated a gradual but smaller increase in readmission risk. These findings highlight the potential value of utilization history when identifying high-risk diabetic patients.
