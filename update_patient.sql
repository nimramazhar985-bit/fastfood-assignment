USE fastfood_db;

-- Update patient status safely
UPDATE Patients
SET Status = 'Discharged'
WHERE PatientID = 45
  AND Name = 'Ali';