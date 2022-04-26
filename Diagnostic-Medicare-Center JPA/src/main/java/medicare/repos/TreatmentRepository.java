package medicare.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Appointment;
import medicare.models.Doctor;
import medicare.models.Patient;
import medicare.models.Treatment;

@Repository
public interface TreatmentRepository extends JpaRepository<Treatment, Integer> {
	Treatment findByAppointment(Appointment ap);
	List<Treatment> findByDoctor(Doctor doc);
	List<Treatment> findByPatient(Patient patient);
}
