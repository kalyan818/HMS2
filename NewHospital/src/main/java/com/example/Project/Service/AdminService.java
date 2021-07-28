package com.example.Project.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.Project.Model.RegisterDoctorModel;
import com.example.Project.Model.RegisterHospitalAdminModel;
import com.example.Project.Model.TieUpModel;


@Service
public class AdminService {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<RegisterHospitalAdminModel> getHospitals() {
		String sql = "select * from register_hospitaladmin";
		List<RegisterHospitalAdminModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(RegisterHospitalAdminModel.class));
		return users;
	}

	public List<RegisterDoctorModel> getDoctors() {
		String sql = "select * from register_doctor";
		List<RegisterDoctorModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(RegisterDoctorModel.class));
		return users;
	}

	public Map<String,String> getServices() {
		String sql = "select * from register_hospitaladmin";
		List<String> hospitalName = new ArrayList();
		List<String> facilityName= new ArrayList();
		List<RegisterHospitalAdminModel> users = jdbcTemplate.query(sql,new BeanPropertyRowMapper(RegisterHospitalAdminModel.class));
		Map<String, String> m = new HashMap<String, String>();
		for(RegisterHospitalAdminModel k:users) {
			List<String> users1= jdbcTemplate.queryForList("select Facility from  hospital_HOS"+calculateLength(k.getId())+"facilities;",String.class);
			hospitalName.add(k.getHospital_Name());
			String u="";
			for(String o:users1)
			{
				u=u+","+o;
			}
			m.put(k.getHospital_Name(), u);
		}
		return m;
	}
	private String calculateLength(String s) {

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

	public List<TieUpModel> getTieUpHospitals() {
		String s = "select * from TieUp";
		List<TieUpModel> users = jdbcTemplate.query(s,new BeanPropertyRowMapper(TieUpModel.class));
		return users;
	}

	public void changeTieUpHospitalStatus(String hos1, String hos2,String Status) {
		String s = "update TieUp set Status = \""+Status+"\" where Hospital1=\""+hos1+"\" and Hospital2= \""+hos2+"\";";
		jdbcTemplate.execute(s);
		
	}

}
