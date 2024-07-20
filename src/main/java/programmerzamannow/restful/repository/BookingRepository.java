package programmerzamannow.restful.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import programmerzamannow.restful.entity.Booking;

public interface BookingRepository extends JpaRepository<Booking, String> {
}

