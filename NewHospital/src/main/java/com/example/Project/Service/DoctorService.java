package com.example.Project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.Project.Model.TestResultModel;
import com.example.Project.Model.ViewAppointmentModel;


@Service
public class DoctorService {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<ViewAppointmentModel> viewAppointments(String id) {
		List<ViewAppointmentModel> appointments = jdbcTemplate.query("select * from doctor_"+id+"Appointments;", new BeanPropertyRowMapper(ViewAppointmentModel.class));
		return appointments;
	}



	public void changeStatus(String doctorId, String id, String Status) {
		String sql3 = "select * from doctor_"+doctorId+"appointments where id ="+id;
		List<ViewAppointmentModel> user = jdbcTemplate.query(sql3, new BeanPropertyRowMapper(ViewAppointmentModel.class));
		String sql = "update doctor_"+doctorId+"appointments SET"+" Status =\""+Status+"\" "+ "where id=\""+id+"\";";
		String sql1 = "update patient_"+user.get(0).getPATID()+"appointments SET"+" Status =\""+Status+"\" "+ "where Time=\""+user.get(0).getTime()
		+"\" and Facility=\""+user.get(0).getFacility()
		+"\" and Date=\""+user.get(0).getDate()
		+"\" and Remarks=\""+user.get(0).getRemarks()+"\";";
		jdbcTemplate.execute(sql);
		jdbcTemplate.execute(sql1);
		
	}
	public String calculateLength(String s) {

		String id = "";
		if (s.length() == 1) {
			id = "00000" + s;
		}
		if (s.length() == 2) {
			id = "0000" + s;
		}
		if (s.length() == 3) {
			id = "000" + s;
		}
		if (s.length() == 4) {
			id = "00" + s;
		}
		if (s.length() == 5) {
			id = "0" + s;
		}
		if (s.length() >= 6) {
			id = s;
		}
		return id;

	}



		public void updateResult(TestResultModel tR, String doctor_Id) {
		String sql = "update doctor_"+doctor_Id+"appointments SET"+"  Result1=\""+tR.getResult1()+"\","+
				" Result2 =\""+tR.getResult2()+"\" where id=\""+tR.getUniqueId()+"\";";
		String sql1 = "select * from doctor_"+doctor_Id+"appointments where id ="+tR.getUniqueId()+";";
		
		List<ViewAppointmentModel> user = jdbcTemplate.query(sql1, new BeanPropertyRowMapper(ViewAppointmentModel.class));

		
		String sql2 = "update patient_"+user.get(0).getPATID()+"appointments SET"+"  Result1=\""+tR.getResult1()+"\","+
				" Result2 =\""+tR.getResult2()+"\" where Time=\""+user.get(0).getTime()
				+"\" and Facility = \""+user.get(0).getFacility()
				+"\" and Date = \""+user.get(0).getDate()+"\";";
		jdbcTemplate.execute(sql);
		jdbcTemplate.execute(sql2);
		
	}
}
