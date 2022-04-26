package medicare.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.DiagnosticService;

@Repository
public interface DiagnosticServiceRepository extends JpaRepository<DiagnosticService, Integer> {

}
