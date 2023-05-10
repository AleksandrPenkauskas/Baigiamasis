package lt.aleksandr.baigiamasis.repositories;

import lt.aleksandr.baigiamasis.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
