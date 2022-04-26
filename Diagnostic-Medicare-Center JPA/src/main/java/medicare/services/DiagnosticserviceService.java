package medicare.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.models.DiagnosticService;
import medicare.repos.DiagnosticServiceRepository;

@Service
public class DiagnosticserviceService {
	@Autowired DiagnosticServiceRepository repo;
	
	public void addService(DiagnosticService ds) {
		repo.save(ds);
	}
	
	public List<DiagnosticService> allDiagnosticServices(){
		return repo.findAll();
	}
	
	public DiagnosticService findById(int dsid) {
		return repo.getById(dsid);
	}
}
