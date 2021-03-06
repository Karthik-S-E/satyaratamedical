package medicare.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Prescription;
import medicare.models.Treatment;

@Repository
public interface PrescriptionRepository extends JpaRepository<Prescription, Integer> {
	List<Prescription> findByTreatment(Treatment treatment);
}
