package com.example.Project.Model;

public class ForgetPasswordModel {
	
	private String User_Id;
	private String Security_Question;
	private String Answer;
	private String Contact_Number;
	public String getUser_Id() {
		return User_Id;
	}
	public void setUser_Id(String user_Id) {
		User_Id = user_Id;
	}
	public String getSecurity_Question() {
		return Security_Question;
	}
	public void setSecurity_Question(String security_Question) {
		Security_Question = security_Question;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
	}
	public String getContact_Number() {
		return Contact_Number;
	}
	public void setContact_Number(String contact_Number) {
		Contact_Number = contact_Number;
	}
	@Override
	public String toString() {
		return "ForgetPasswordModel [User_Id=" + User_Id + ", Security_Question=" + Security_Question + ", Answer="
				+ Answer + ", Contact_Number=" + Contact_Number + "]";
	}
	

}
