package lt.aleksandr.baigiamasis.repositories;

import lt.aleksandr.baigiamasis.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
