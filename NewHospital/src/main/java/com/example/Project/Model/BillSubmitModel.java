package com.example.Project.Model;

public class BillSubmitModel {
	private String AmountFacility;
	private String AmountDoctors;
	private String AmountMedicine;
	private String AmountRoomCharge;
	private String Date_Of_Discharge;
	private String PATID;
	
	
	

	public String getAmountFacility() {
		return AmountFacility;
	}
	public void setAmountFacility(String amountFacility) {
		AmountFacility = amountFacility;
	}
	public String getAmountDoctors() {
		return AmountDoctors;
	}
	public void setAmountDoctors(String amountDoctors) {
		AmountDoctors = amountDoctors;
	}
	public String getAmountMedicine() {
		return AmountMedicine;
	}
	public void setAmountMedicine(String amountMedicine) {
		AmountMedicine = amountMedicine;
	}
	public String getAmountRoomCharge() {
		return AmountRoomCharge;
	}
	public void setAmountRoomCharge(String amountRoomCharge) {
		AmountRoomCharge = amountRoomCharge;
	}
	public String getDate_Of_Discharge() {
		return Date_Of_Discharge;
	}
	public void setDate_Of_Discharge(String date_Of_Discharge) {
		Date_Of_Discharge = date_Of_Discharge;
	}
	
	
	public String getPATID() {
		return PATID;
	}
	public void setPATID(String pATID) {
		PATID = pATID;
	}
	@Override
	public String toString() {
		return "BillSubmitModel [AmountFacility=" + AmountFacility + ", AmountDoctors=" + AmountDoctors
				+ ", AmountMedicine=" + AmountMedicine + ", AmountRoomCharge=" + AmountRoomCharge
				+ ", Date_Of_Discharge=" + Date_Of_Discharge + ", PATID=" + PATID + "]";
	}
	
	
	

}
