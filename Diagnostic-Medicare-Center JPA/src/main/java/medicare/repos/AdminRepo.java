package medicare.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import medicare.models.Admin;

@Repository
public interface AdminRepo extends JpaRepository<Admin, String> {

}
