package medicare.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Appointment;
import medicare.models.Doctor;
import medicare.models.Patient;

@Repository
public interface AppintmentRepo extends JpaRepository<Appointment, Integer> {

	List<Appointment> findByDoctor(Doctor doctor);
	List<Appointment> findByPatient(Patient patient);
	List<Appointment> findByDoctorAndStatus(Doctor doctor,String status);
}
