package medicare.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import medicare.dto.AppointmentDTO;
import medicare.models.Test;
import medicare.models.Treatment;
import medicare.services.AppointmentService;
import medicare.services.DiagnosticserviceService;
import medicare.services.DoctorService;
import medicare.services.PatientService;
import medicare.services.TestService;
import medicare.services.TreatmentService;

@Controller
public class PatientController {
	
	@Autowired DiagnosticserviceService dssrv;
	@Autowired PatientService psrv;
	@Autowired DoctorService dsrv;
	@Autowired AppointmentService apsrv;
	@Autowired HttpSession session;
	@Autowired TreatmentService tsrv;
	@Autowired TestService ttsrv;

	@GetMapping("/detailds")
	public String diagdetails(int dsid,Model model) {
		model.addAttribute("ds", dssrv.findById(dsid));
		return "detailservice";
	}
	
	@GetMapping("/viewdocs")
	public String viewdoctors(String dsname,Model model) {
		model.addAttribute("users", dsrv.findByService(dsname));
		return "doctors";
	}
	
	@GetMapping("/bookapt")
	public String bookappointment(Model model) {
		model.addAttribute("users", dsrv.allDocs());
		return "bookappt";
	}
	
	@PostMapping("/bookapt")
	public String saveappointment(AppointmentDTO apt) {
		apsrv.saveAppointment(apt);
		return "redirect:/bookapt";
	}
	
	@GetMapping("/myapts")
	public String myappointment(Model model) {
		String patid=session.getAttribute("userid").toString();
		model.addAttribute("list", apsrv.findByPatientId(patid));
		return "appointments";
	}
	
	@GetMapping("/aptdetails")
	public String appointmentdetails(Model model,int id) {		
		model.addAttribute("ap", apsrv.findByApptId(id));
		return "aptdetails";
	}
	
	@GetMapping("/pathistory")
	public String treatmenthistory(Model model) {
		String patid=session.getAttribute("userid").toString();
		model.addAttribute("list", tsrv.findPatient(patid));
		return "treathistory";
	}
	
	@GetMapping("treatdetails/{id}")
	public String treatdetails(@PathVariable("id") int tid,Model model) {
		Treatment t=tsrv.details(tid);
		model.addAttribute("t", t);
		model.addAttribute("plist", tsrv.treatmentPrescription(t));
		return "treatmentdetails";
	}
	
	@GetMapping("/testrequest")
	public String testrequest() {
		return "raisetestreq";
	}
	
	@PostMapping("/testrequest")
	public String testrequest(Test t) {
		ttsrv.saveTest(t);
		return "redirect:/mytests";
	}
	
	@GetMapping("/mytests")
	public String mytests(Model model) {
		String patid=session.getAttribute("userid").toString();
		model.addAttribute("tests", ttsrv.patientTest(patid));
		return  "tests";
	}
}
