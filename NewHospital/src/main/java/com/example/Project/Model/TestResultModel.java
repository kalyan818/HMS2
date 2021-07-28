package com.example.Project.Model;

public class TestResultModel {
	
	private String Result1;
	private String Result2;
	private String uniqueId;
	
	
	
	public String getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
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
		return "TestResultModel [Result1=" + Result1 + ", Result2=" + Result2 + ", uniqueId=" + uniqueId + "]";
	}
	
	

}
