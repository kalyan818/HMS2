package com.example.Project.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.Project.Model.RegisterDoctorModel;
import com.example.Project.Model.RegisterHospitalAdminModel;
import com.example.Project.Model.ReportSelection;
import com.example.Project.Model.TestResultModel;
import com.example.Project.Model.TieUpModel;
import com.example.Project.Model.ViewAppointmentModel;
import com.example.Project.Service.AdminService;
import com.example.Project.Service.DoctorService;
import com.example.Project.Service.PatientRegisterService;

@Controller
@SessionAttributes("id")
public class AdminController {
	
	
	@Autowired
	AdminService adminService;
	
	@GetMapping(path ="/TieUpHospital_a")
	public String TieUpHospitals(ModelMap map) {
		
		List<TieUpModel> k =  adminService.getTieUpHospitals();
		System.out.println(k.toString());
		map.addAttribute("TieUp", k);
		return "TieUpHospital_a";
	}
	
	
	@GetMapping(path ="/ChangeStatus")
	public String ChangeStatus(@RequestParam String hos1,String hos2,String Status, ModelMap map) {
		adminService.changeTieUpHospitalStatus(hos1,hos2,Status);
		List<TieUpModel> k =  adminService.getTieUpHospitals();
		map.addAttribute("TieUp", k);
		return "TieUpHospital_a";
	}
	
	
	
	
	
	
	@GetMapping("/Reports_a")
	public String Reports(ModelMap map) {
	
		return "Reports_a";
	}
	@GetMapping("/ReportsSelections_a")
	public String ReportsSelections(@ModelAttribute("ReportsSelections") ReportSelection reportSelection,ModelMap map) {
		if(reportSelection.getSelection().equals("Hospital")) {
			List<RegisterHospitalAdminModel> hospitals = adminService.getHospitals();
			map.addAttribute("hospital", hospitals);
			System.out.println(hospitals.get(0));
			return "ReportsSelections_Hospital_a";
		}else if(reportSelection.getSelection().equals("Doctors")) {
			List<RegisterDoctorModel> doctors = adminService.getDoctors();
			map.addAttribute("doctors", doctors);
			System.out.println(doctors.get(0));
			return "ReportsSelections_Doctors_a";
		}else {
			Map<String, String> hospitals = adminService.getServices();
			map.addAttribute("hospital", hospitals);
			System.out.println(hospitals.toString());
			return "ReportsSelections_Service_a";
		}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
