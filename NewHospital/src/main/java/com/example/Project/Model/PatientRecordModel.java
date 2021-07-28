package com.example.Project.Model;

public class PatientRecordModel {
	
	private String Hospital_Id;
	private String Patient_Id;
	public String getHospital_Id() {
		return Hospital_Id;
	}
	public void setHospital_Id(String hospital_Id) {
		Hospital_Id = hospital_Id;
	}
	public String getPatient_Id() {
		return Patient_Id;
	}
	public void setPatient_Id(String patient_Id) {
		Patient_Id = patient_Id;
	}
	@Override
	public String toString() {
		return "PatientRecordModel [Hospital_Id=" + Hospital_Id + ", Patient_Id=" + Patient_Id + "]";
	}
	
	

}
