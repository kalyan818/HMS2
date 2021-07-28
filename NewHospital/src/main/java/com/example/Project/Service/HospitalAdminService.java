package com.example.Project.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.Project.Model.AddFacilitiesModel;
import com.example.Project.Model.InPateintModel;
import com.example.Project.Model.PatientRecordModel;
import com.example.Project.Model.ViewAppointmentModel;
import com.example.Project.Model.loginModel;
import com.example.Project.Model.RegisterDoctorModel;
import com.example.Project.Model.RegisterHospitalAdminModel;
import com.example.Project.Model.RegisterPatientModel;
import com.example.Project.Model.TestResultModel;
import com.example.Project.Model.TieUpModel;

@Service
public class HospitalAdminService {
	@Autowired
	JdbcTemplate jdbcTemplate;


	public List<RegisterDoctorModel> AllDoctors() {
		List<RegisterDoctorModel> s = new ArrayList<RegisterDoctorModel>();
		List<RegisterDoctorModel> users= jdbcTemplate.query("select * from register_doctor;", new BeanPropertyRowMapper(RegisterDoctorModel.class));
		s.addAll(users);
	return s;
	}


	public List<RegisterDoctorModel> DoctorsInOurHospital(String id) {
		List<RegisterDoctorModel> users1 = new ArrayList<RegisterDoctorModel>();
		List<String> ids= jdbcTemplate.queryForList("select id from hospital_"+id+"Doctors",String.class);
		for(String k:ids) {
			List<RegisterDoctorModel> users= jdbcTemplate.query("select * from register_doctor where id ="+k+";", new BeanPropertyRowMapper(RegisterDoctorModel.class));
			users1.addAll(users);
		}
		
		
	return users1;
	}


	public void addToHospitalDatabase(RegisterDoctorModel registerDoctorModel,String hospitalid) {
		String sql = "insert into hospital_"+hospitalid +"Doctors(id,First_Name,Last_Name,DOB,Gender,Contact_Number,Email,Qualification,Speciality,Experience,"
				+ "Hospital_Name,DAY,Available_From,Available_To) values("
				+ "\"" + registerDoctorModel.getId() + "\"" + "," + "\""
				+ registerDoctorModel.getFirst_Name() + "\"" + "," + "\""
				+ registerDoctorModel.getLast_Name()+ "\"" + "," + "\""
				+ registerDoctorModel.getDOB()+ "\"" + "," + "\""
				+ registerDoctorModel.getGender()+ "\"" + "," + "\""
				+ registerDoctorModel.getContact_Number()+ "\"" + "," + "\""
				+ registerDoctorModel.getEmail()+ "\"" + "," + "\""
				+ registerDoctorModel.getQualification()+ "\"" + "," + "\""
				+ registerDoctorModel.getSpeciality()+ "\"" + "," + "\""
				+ registerDoctorModel.getExperience()+ "\"" + "," + "\""
				+ registerDoctorModel.getHospital_Name()+ "\"" + "," + "\""
				+ registerDoctorModel.getDAY()+ "\"" + "," + "\""
				+ registerDoctorModel.getAvailable_From()+ "\"" + "," + "\""
				+ registerDoctorModel.getAvailable_To()+ "\"" + ");";		
		jdbcTemplate.execute(sql);
		
	}






	public boolean checkIfPresent(RegisterDoctorModel doctors, String hospitalid) {
		String sql = "select * from hospital_"+hospitalid+"doctors where Email=\""+doctors.getEmail()
		+"\" and id=\""+doctors.getId()
		+"\" and First_Name=\""+doctors.getFirst_Name()
		+"\" and Last_Name=\""+doctors.getLast_Name()
		+"\" and DOB=\""+doctors.getDOB()
		+"\" and Gender=\""+doctors.getGender()
		+"\" and Contact_Number=\""+doctors.getContact_Number()
		+"\" and Qualification=\""+doctors.getQualification()
		+"\" and Speciality=\""+doctors.getSpeciality()
		+"\" and Hospital_Name=\""+doctors.getHospital_Name()
		+"\" and DAY=\""+doctors.getDAY()
		+"\" and Available_From=\""+doctors.getAvailable_From()
		+"\" and Available_To=\""+doctors.getAvailable_To()+"\";";
		List<RegisterDoctorModel> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper(RegisterDoctorModel.class));
		if(users.isEmpty()) {
			return false;
		}else {
			return true;	
		}
		
		
		
		
	}
	
	public Boolean addFacilitiesToDatabase(AddFacilitiesModel addFacilitiesModel,String id) {
		if(checkFacilityAlreadyAdded(addFacilitiesModel,id)) {
			return false;
		}else {
			String sql = "insert into hospital_"+id+"Facilities"+" (Facility,Description_of_Facilities,Remarks_of_Facilities)values("
					+ "\"" + addFacilitiesModel.getFacility() + "\"" + "," + "\""
					+ addFacilitiesModel.getDescription_of_Facilities() + "\"" + "," + "\""
					+ addFacilitiesModel.getRemarks_of_Facilities() + "\"" + ");";
			jdbcTemplate.execute(sql);
			return true;
		}
		
	}
	public Boolean updateFacilitiesToDatabase(AddFacilitiesModel addFacilitiesModel,String id) {
		if(checkFacilityAlreadyAdded(addFacilitiesModel, id)) {
			System.out.println("updated");
			String sql = "update hospital_"+id+"Facilities SET"+" Description_of_Facilities =\""+addFacilitiesModel.getDescription_of_Facilities()+"\","+
					" Remarks_of_Facilities =\""+addFacilitiesModel.getRemarks_of_Facilities()+"\" where Facility=\""+addFacilitiesModel.getFacility()+"\";";
			jdbcTemplate.execute(sql);
			return true;
		}else {
			System.out.println("not updated");
			return false;
		}
		
	}
	
	
	public void DeleteFacility(String facility,String hospital_Id) {
		String sql = "DELETE FROM hospital_"+hospital_Id +"facilities WHERE Facility= \""+facility+"\";";
		jdbcTemplate.execute(sql);
	}
	
	


	public List<ViewAppointmentModel> viewAppointments(String k) {
			List<ViewAppointmentModel> appointments = jdbcTemplate.query("select * from hospital_"+k+"Appointments;", new BeanPropertyRowMapper(ViewAppointmentModel.class));
			return appointments;
		
	}



	public void changeStatus(String hospitalid,String id,String Status) {
		String sql3 = "select * from hospital_"+hospitalid+"appointments where id ="+id;
		List<ViewAppointmentModel> user = jdbcTemplate.query(sql3, new BeanPropertyRowMapper(ViewAppointmentModel.class));
		String sql = "update hospital_"+hospitalid+"appointments SET"+" Status =\""+Status+"\" "+ "where id=\""+id+"\";";
		String sql1 = "update patient_"+user.get(0).getPATID()+"appointments SET"+" Status =\""+Status+"\" "+ "where Time=\""+user.get(0).getTime()
		+"\" and Facility=\""+user.get(0).getFacility()
		+"\" and Date=\""+user.get(0).getDate()
		+"\" and Remarks=\""+user.get(0).getRemarks()+"\";";
		jdbcTemplate.execute(sql);
		jdbcTemplate.execute(sql1);
		
		
	}


	public void updateResult(TestResultModel tR, String hospital_Id) {
		String sql = "update hospital_"+hospital_Id+"appointments SET"+"  Result1=\""+tR.getResult1()+"\","+
				" Result2 =\""+tR.getResult2()+"\" where id=\""+tR.getUniqueId()+"\";";
		String sql1 = "select * from hospital_"+hospital_Id+"appointments where id ="+tR.getUniqueId()+";";
		
		List<ViewAppointmentModel> user = jdbcTemplate.query(sql1, new BeanPropertyRowMapper(ViewAppointmentModel.class));

		
		String sql2 = "update patient_"+user.get(0).getPATID()+"appointments SET"+"  Result1=\""+tR.getResult1()+"\","+
				" Result2 =\""+tR.getResult2()+"\" where Time=\""+user.get(0).getTime()
				+"\" and Facility = \""+user.get(0).getFacility()
				+"\" and Date = \""+user.get(0).getDate()+"\";";
		jdbcTemplate.execute(sql);
		jdbcTemplate.execute(sql2);
		
	}


	public List<AddFacilitiesModel> ViewAvaliableFacilities(String id) {
		List<AddFacilitiesModel> users1= jdbcTemplate.query("select * from hospital_"+id+"facilities;", new BeanPropertyRowMapper(AddFacilitiesModel.class));
		return users1;
		
	}


	public boolean checkFacilityAlreadyAdded(AddFacilitiesModel addFacilitiesModel,String id) {
		String sql = "select * from hospital_"+id+"Facilities where Facility=\""+addFacilitiesModel.getFacility()+"\";";
		List<AddFacilitiesModel> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper(AddFacilitiesModel.class));
		if(users.isEmpty()) {
			return false;
		}else {
			return true;	
		}
	}


	public List<RegisterDoctorModel> getDoctorDetails(String select) {
		String sql = "select * from register_doctor where id=\""+select+"\";";
		List<RegisterDoctorModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(RegisterDoctorModel.class));
		return users;
	}


	public void removeFromHospitalDatabase(String deselect, String hospital_Id) {
		String sql = "DELETE FROM hospital_"+hospital_Id+"Doctors WHERE id = "+deselect+";";
		jdbcTemplate.execute(sql);
		
	}


	


	public boolean checkPatientExists(String patient_Id) {
		String sql = "select * from login where userid=\""+patient_Id+"\";";
		List<loginModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(loginModel.class));
		if(users.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}


	public void AddToInPatientTable(InPateintModel inPateintModel,String id) {
		String sql = "insert into hospital_"+id+"InPatient"+" (PATID,Patient_Name,Gender,Age,Reason,Facilities,Doctors,Date_Of_Joining,Date_Of_Discharge,Status)values("
				+ "\"" + inPateintModel.getPATID()+ "\"" + "," + "\""
				+ inPateintModel.getPatient_Name()+ "\"" + "," + "\""
				+ inPateintModel.getGender()+ "\"" + "," + "\""
				+ inPateintModel.getAge()+ "\"" + "," + "\""
				+ inPateintModel.getReason()+ "\"" + "," + "\""
				+ ""+ "\"" + "," + "\""
				+ ""+ "\"" + "," + "\""
				+ inPateintModel.getDate_Of_Joining()+ "\"" + "," + "\""
				+ inPateintModel.getDate_Of_Discharge()+ "\"" + "," + "\""
				+ "Active"+ "\"" + ");";
		jdbcTemplate.execute(sql);
		
	}


	public boolean checkStatusOfInPatient(InPateintModel inPateintModel,String id) {
		String sql = "select * from hospital_"+id+"InPatient where PATID=\""+inPateintModel.getPATID()+"\" and Status=\"Active\";";
		List<InPateintModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(InPateintModel.class));
		if(users.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}


	public  List<InPateintModel> getInPatientDetails(String patid, String hospital_Id) {
		String sql = "select * from hospital_"+hospital_Id+"InPatient where PATID=\""+patid+"\" and Status=\"Active\";";
		List<InPateintModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(InPateintModel.class));
		if(users.isEmpty()) {
			return new ArrayList<InPateintModel>();
		}else {
			return users;
		}
	}


	public void ChangeStatusOfInPatient(String pATID,String Date_Of_Discharge,String hospital_Id) {
		String sql = "update hospital_"+hospital_Id+"InPatient SET"+"  Status=\""+"Close"+"\","+" Date_Of_Discharge =\""+Date_Of_Discharge+"\" where PATID=\""+pATID+"\";";
		jdbcTemplate.execute(sql);
	}


	public List<RegisterHospitalAdminModel> getAllHospitalDetails(String hospital_id) {
		String sql = "select * from register_hospitaladmin where id!=\""+Integer.parseInt(hospital_id.substring(3, 9))+"\";";
		List<RegisterHospitalAdminModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(RegisterHospitalAdminModel.class));
		return users;
	}


	public void makeTieUpRequest(String hos, String hos1,String HosName) {
		String s = "insert into TieUp values(\""+Integer.parseInt(hos1.substring(3, 9))+"\",\""+hos+"\",\"Pending\",\""+hos1+"\",\""+HosName+"\");";
		jdbcTemplate.execute(s);
		
	}


	public List<TieUpModel> getTiedUpDetails() {
		String sql = "select * from TieUp;";
		List<TieUpModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(TieUpModel.class));
		return users;
	}


	public boolean checkTieUpHospital(String hospital_Id1, String hospital_Id2) {
		String sql = "select * from TieUp where Hospital2=\""+Integer.parseInt(hospital_Id1.substring(3, 9))+"\" and Hospital1Name=\""+hospital_Id2+"\" and Status=\"Approve\";";
		List<TieUpModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(TieUpModel.class));
		
		System.out.println(users.toString());
		if(users.isEmpty()) {
			return false;
		}else {
			return true;
		}
		
	}


	public List<ViewAppointmentModel> checkPatientRecord(PatientRecordModel model) {
		String sql = "select * from hospital_"+model.getHospital_Id()+"appointments where PATID=\""+model.getPatient_Id()+"\";" ;
		List<ViewAppointmentModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(ViewAppointmentModel.class));
		return users;
	}


	
	
	
	
}
