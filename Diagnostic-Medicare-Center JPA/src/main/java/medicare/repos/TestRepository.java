package medicare.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Patient;
import medicare.models.Test;

@Repository
public interface TestRepository extends JpaRepository<Test, Integer> {

	List<Test> findByPatient(Patient patient);
}
