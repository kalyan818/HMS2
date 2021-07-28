package com.example.Project.Model;

public class ViewAppointmentModel {
	private String id;
	private String PATID;
	private String Time;
	private String Facility;
	private String Date;
	private String Status;
	private String Remarks;
	private String Result1;
	private String Result2;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPATID() {
		return PATID;
	}
	public void setPATID(String pATID) {
		PATID = pATID;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public String getFacility() {
		return Facility;
	}
	public void setFacility(String facility) {
		Facility = facility;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String remarks) {
		Remarks = remarks;
	}
	public String getResult1() {
		return Result1;
	}
	public void setResult1(String result1) {
		Result1 = result1;
	}
	public String getResult2() {
		return Result2;
	}
	public void setResult2(String result2) {
		Result2 = result2;
	}
	@Override
	public String toString() {
		return "ViewAppointmentModel [id=" + id + ", PATID=" + PATID + ", Time=" + Time + ", Facility=" + Facility
				+ ", Date=" + Date + ", Status=" + Status + ", Remarks=" + Remarks + ", Result1=" + Result1
				+ ", Result2=" + Result2 + "]";
	}
	
	

}
