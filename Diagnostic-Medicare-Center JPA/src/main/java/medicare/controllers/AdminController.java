package medicare.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import medicare.models.Admin;
import medicare.models.DiagnosticService;
import medicare.models.Doctor;
import medicare.models.Patient;
import medicare.models.Test;
import medicare.services.AdminService;
import medicare.services.DiagnosticserviceService;
import medicare.services.DoctorService;
import medicare.services.PatientService;
import medicare.services.TestService;

@Controller
public class AdminController {
	
	@Autowired DoctorService dsrv;
	@Autowired PatientService psrv;
	@Autowired AdminService asrv;
	@Autowired DiagnosticserviceService dssrv;
	@Autowired TestService tsrv;
	
	@Autowired HttpSession session;	

	@GetMapping("/")
	public String home() {
		return  "index";
		
	}
	
	@PostMapping("/validate")
	public String validate(String userid,String pwd,Model model,RedirectAttributes ra) {
		if(userid.startsWith("doctor")) {
			Doctor d=dsrv.findById(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("role", "Doctor");
			session.setAttribute("uname", d.getFname());
			return"redirect:/dashboard";
		}
		else if(userid.startsWith("patient")) {
			Patient d=psrv.findByPatientId(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("role", "Patient");
			session.setAttribute("uname", d.getFname());
			return "redirect:/dashboard";
		}
		else {
			Admin admin=asrv.validate(userid, pwd);
			if(admin==null) {
				ra.addFlashAttribute("msg", "Incorrect userid or password");
				return "redirect:/";
			}else {
				session.setAttribute("userid", userid);
				session.setAttribute("role", "Admin");
				return "redirect:/dashboard";
			}
		}
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "adashboard";
	}
	
	@GetMapping("/doctors")
	public String doctors(Model model) {
		String docid="doctor"+(dsrv.countDocs()+1);
		model.addAttribute("docid", docid);
		model.addAttribute("users", dsrv.allDocs());
		return "doctors";
	}
	
	@GetMapping("/patients")
	public String patients(Model model) {
		model.addAttribute("patid", "patient"+(psrv.countPatient()+1));
		model.addAttribute("users", psrv.allPatients());
		return "patients";
	}
	
	@PostMapping("/patients")
	public String savePatient(Patient pat,RedirectAttributes ra) {
		System.out.println(pat);
		psrv.savePatient(pat);
		ra.addFlashAttribute("msg", "Patient registered succecssfully");
		return "redirect:/patients";
	}
	
	@GetMapping("/diagservices")
	public String services(Model model) {
		model.addAttribute("services", dssrv.allDiagnosticServices());
		return "diagservices";
	}
	
	@GetMapping("/register")
	public String register(Model model,String role) {
		
		String patid="patient"+(psrv.countPatient()+1);
		
		model.addAttribute("patid", patid);
		model.addAttribute("doctor", new Doctor());
		model.addAttribute("patient", new Patient());
		return "register";
	}
	
	@PostMapping("/registerdoc")
	public String saveDoctor(Doctor doc,Model model,RedirectAttributes ra) {
		System.out.println(doc);
		dsrv.saveDoctor(doc);
		ra.addFlashAttribute("msg", "Doctor registered succecssfully");
		return "redirect:/";
	}
	
	@PostMapping("/registerpat")
	public String savePatients(Patient pat,RedirectAttributes ra) {
		System.out.println(pat);
		psrv.savePatient(pat);
		ra.addFlashAttribute("msg", "Patient registered succecssfully");
		return "redirect:/";
	}
	
	@GetMapping("/addservice")
	public String addService(Model model) {
		return "adddiagservice";
	}
	
	@PostMapping("/addservice")
	public String addService(Model model,DiagnosticService ds,RedirectAttributes ra) {
		dssrv.addService(ds);
		ra.addFlashAttribute("msg","Diagnostic Service added successfully");
		return "redirect:/diagservices";
	}
	
	@GetMapping("/editds")
	public String editservice(int dsid,Model model) {
		model.addAttribute("ds",dssrv.findById(dsid));
		return "editservice";
	}
	
	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/tests")
	public String tests(Model model) {
		model.addAttribute("tests", tsrv.allTests());
		return "tests";
	}
	
	@GetMapping("/updatetest")
	public String updatetest(int id,Model model) {
		model.addAttribute("t", tsrv.findTest(id));
		return "updatetest";
	}
	
	@PostMapping("/updatetest")
	public String updatetest(Test t) {
		tsrv.updateTest(t);
		return "redirect:/tests";
	}
	
}
