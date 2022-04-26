package medicare.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.models.Patient;
import medicare.repos.PatientRepository;

@Service
public class PatientService {

	@Autowired PatientRepository prepo;
	
	public void savePatient(Patient p) {
		prepo.save(p);
	}
	
	public List<Patient> allPatients(){
		return prepo.findAll();
	}
	
	public long countPatient() {
		return prepo.count();
	}
	
	public Patient findByPatientId(String patientid) {
		return prepo.findById(patientid).get();
	}
}
