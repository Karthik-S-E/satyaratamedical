package medicare.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.models.Admin;
import medicare.repos.AdminRepo;

@Service
public class AdminService {

	@Autowired AdminRepo repo;
	
	public void saveAdmin(Admin admin) {
		repo.save(admin);
	}
	
	public long countUser() {
		return repo.count();
	}
	
	public Admin validate(String userid,String pwd) {
		Optional<Admin> admin=repo.findById(userid);
		if(admin.isPresent()) {
			if(admin.get().getPwd().equals(pwd)) {
				return admin.get();
			}
			else
				return null;
		}
		else
			return null;
	}
}
