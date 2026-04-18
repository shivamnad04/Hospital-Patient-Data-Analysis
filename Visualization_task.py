import pandas as pd
import matplotlib.pyplot as plt

# Load Dataset
df = pd.read_csv("patients.csv")


# Visualization 1 - Pie Chart (Disease Distribution)

plt.figure()
df['disease'].value_counts().plot(kind='pie', autopct='%1.1f%%')
plt.title("Disease Distribution")
plt.ylabel("")
plt.show()

# Visualization 2 - Bar Chart (Doctor Workload)

plt.figure()
df['doctor'].value_counts().plot(kind='bar')
plt.title("Doctor Workload (Number of Patients)")
plt.xlabel("Doctor")
plt.ylabel("Number of Patients")
plt.show()
