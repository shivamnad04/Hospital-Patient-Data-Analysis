import pandas as pd


# 1. Load Dataset

df = pd.read_csv("patients.csv")

print("---- Dataset ----")
print(df)

# 2. Disease Frequency

print("\n---- Disease Frequency ----")
disease_count = df['disease'].value_counts()
print(disease_count)

# 3. Treatment Cost Statistics

print("\n---- Treatment Cost Stats ----")
print(df['treatment_cost'].describe())

# 4. Group Patients by Doctor

print("\n---- Patients per Doctor ----")
doctor_group = df.groupby('doctor')['patient_id'].count()
print(doctor_group)

# 5. Identify Doctor with Most Patients

top_doctor = doctor_group.idxmax()
print("\nDoctor with most patients:", top_doctor)

# 6. Average Treatment Cost

avg_cost = df['treatment_cost'].mean()
print("\nAverage Treatment Cost:", avg_cost)
