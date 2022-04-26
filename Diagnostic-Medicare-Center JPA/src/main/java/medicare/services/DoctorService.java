package medicare.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.models.Doctor;
import medicare.repos.DoctorRepository;

@Service
public class DoctorService {

	@Autowired DoctorRepository drepo;
	
	public void saveDoctor(Doctor doc) {
		drepo.save(doc);
	}
	
	public List<Doctor> allDocs(){
		return drepo.findAll();
	}
	
	public long countDocs() {
		return drepo.count();
	}
	
	public Doctor findById(String docid) {
		return drepo.findById(docid).get();
	}
	
	public List<Doctor> findByService(String servicename){
		return drepo.findByDiagservice(servicename);
	}
}
