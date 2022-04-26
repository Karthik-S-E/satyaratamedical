package medicare.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, String> {

	List<Doctor> findByDiagservice(String diagservice);
}
