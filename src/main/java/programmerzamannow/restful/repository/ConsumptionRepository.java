package programmerzamannow.restful.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import programmerzamannow.restful.entity.Consumption;

public interface ConsumptionRepository extends JpaRepository<Consumption, String> {
}

