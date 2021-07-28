package com.example.Project.Model;

public class TieUpModel {
	private String Hospital1;
	private String Hospital2;
	private String Status;
	private String Hospital1Name;
	private String Hospital2Name;
	
	
	
	
	
	public String getHospital1() {
		return Hospital1;
	}
	public void setHospital1(String hospital1) {
		Hospital1 = hospital1;
	}
	public String getHospital2() {
		return Hospital2;
	}
	public void setHospital2(String hospital2) {
		Hospital2 = hospital2;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getHospital1Name() {
		return Hospital1Name;
	}
	public void setHospital1Name(String hospital1Name) {
		Hospital1Name = hospital1Name;
	}
	public String getHospital2Name() {
		return Hospital2Name;
	}
	public void setHospital2Name(String hospital2Name) {
		Hospital2Name = hospital2Name;
	}
	@Override
	public String toString() {
		return "TieUpModel [Hospital1=" + Hospital1 + ", Hospital2=" + Hospital2 + ", Status=" + Status
				+ ", Hospital1Name=" + Hospital1Name + ", Hospital2Name=" + Hospital2Name + "]";
	}
	
}
