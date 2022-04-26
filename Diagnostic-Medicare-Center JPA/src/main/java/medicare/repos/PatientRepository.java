package medicare.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, String> {

}
