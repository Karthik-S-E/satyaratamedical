package medicare.services;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.models.Test;
import medicare.repos.TestRepository;

@Service
public class TestService {

	@Autowired private TestRepository repo;
	@Autowired private HttpSession session;
	@Autowired private PatientService psrv;
	
	public void saveTest(Test t) {
		String patid=session.getAttribute("userid").toString();
		t.setPatient(psrv.findByPatientId(patid));
		t.setTdate(LocalDate.now().toString());
		repo.save(t);
	}
	
	public List<Test> allTests(){
		return repo.findAll();
	}
	
	public List<Test> patientTest(String patid){
		return repo.findByPatient(psrv.findByPatientId(patid));
	}
	
	public Test findTest(int id) {
		return repo.getById(id);
	}
	
	public void updateTest(Test t) {
		Test tt=repo.getById(t.getId());
		tt.setRemarks(t.getRemarks());
		tt.setResult(t.getResult());
		tt.setStatus("Processed");
		tt.setTdate(LocalDate.now().toString());
		repo.save(tt);
	}
}
