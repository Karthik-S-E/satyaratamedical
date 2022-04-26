package medicare.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import medicare.dto.TreatmentDTO;
import medicare.models.Appointment;
import medicare.models.Prescription;
import medicare.models.Treatment;
import medicare.services.AppointmentService;
import medicare.services.DiagnosticserviceService;
import medicare.services.DoctorService;
import medicare.services.PatientService;
import medicare.services.TreatmentService;

@Controller
public class DoctorController {
	
	@Autowired DiagnosticserviceService dssrv;
	@Autowired PatientService psrv;
	@Autowired DoctorService dsrv;
	@Autowired AppointmentService apsrv;
	@Autowired TreatmentService tsrv;
	@Autowired HttpSession session;

	@GetMapping("/appointments")
	public String myappointment(Model model) {
		String docid=session.getAttribute("userid").toString();
		model.addAttribute("list", apsrv.findByDoctor(docid));
		return "appointments";
	}
	
	@GetMapping("aptstatus")
	public String updateStatus(int id,String status) {
		Appointment apt=apsrv.findByApptId(id);
		apt.setStatus(status);
		apsrv.updateAppointment(apt);
		return "redirect:/appointments";
	}
	
	@GetMapping("treatments")
	public String treatmentlist(Model model) {
		String docid=session.getAttribute("userid").toString();
		model.addAttribute("list", apsrv.confirmedDoctorAppointments(docid));
		return "treatments";
	}
	
	@GetMapping("tdetails/{id}")
	public String treatmentlist(@PathVariable("id") int id, Model model) {		
		model.addAttribute("ap", apsrv.findByApptId(id));
		Treatment t=tsrv.details(id);
		if(t!=null) {
			model.addAttribute("t",t);
			List<Prescription> plist=tsrv.treatmentPrescription(t);
			for(Prescription pp:plist) {
				System.out.println(pp.getUnit());
			}
			Prescription[] pp=new Prescription[10];
			model.addAttribute("pres", plist.toArray(pp));
			//System.out.println(plist.size());
		}
		return "addtreatment";
	}
	
	@PostMapping("/tdetails/{id}")
	public String saveTreatment(@PathVariable("id") int id,TreatmentDTO dto) {		
		System.out.println(dto);
		dto.setAptid(id);
		tsrv.saveTreatment(dto);
		return "redirect:/treatments";
	}
}
