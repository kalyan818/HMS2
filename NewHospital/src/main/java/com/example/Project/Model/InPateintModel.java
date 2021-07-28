package com.example.Project.Model;

public class InPateintModel {
	private String id;
	private String Patient_Name;
	private String PATID;
	private String Age;
	private String Gender;
	private String Date_Of_Joining;
	private String Date_Of_Discharge;
	private String Facilities;
	private String Doctors;
	private String Reason;
	private String Status;
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPatient_Name() {
		return Patient_Name;
	}
	public void setPatient_Name(String patient_Name) {
		Patient_Name = patient_Name;
	}
	public String getPATID() {
		return PATID;
	}
	public void setPATID(String pATID) {
		PATID = pATID;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDate_Of_Joining() {
		return Date_Of_Joining;
	}
	public void setDate_Of_Joining(String date_Of_Joining) {
		Date_Of_Joining = date_Of_Joining;
	}
	public String getDate_Of_Discharge() {
		return Date_Of_Discharge;
	}
	public void setDate_Of_Discharge(String date_Of_Discharge) {
		Date_Of_Discharge = date_Of_Discharge;
	}
	public String getFacilities() {
		return Facilities;
	}
	public void setFacilities(String facilities) {
		Facilities = facilities;
	}
	public String getDoctors() {
		return Doctors;
	}
	public void setDoctors(String doctors) {
		Doctors = doctors;
	}
	public String getReason() {
		return Reason;
	}
	public void setReason(String reason) {
		Reason = reason;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "InPateintModel [id=" + id + ", Patient_Name=" + Patient_Name + ", PATID=" + PATID + ", Age=" + Age
				+ ", Gender=" + Gender + ", Date_Of_Joining=" + Date_Of_Joining + ", Date_Of_Discharge="
				+ Date_Of_Discharge + ", Facilities=" + Facilities + ", Doctors=" + Doctors + ", Reason=" + Reason
				+ ", Status=" + Status + "]";
	}
	
	

}
