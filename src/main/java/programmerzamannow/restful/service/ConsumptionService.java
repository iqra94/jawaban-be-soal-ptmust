package programmerzamannow.restful.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import programmerzamannow.restful.entity.Consumption;
import programmerzamannow.restful.repository.ConsumptionRepository;

import java.util.List;

@Service
public class ConsumptionService {

    @Autowired
    private ConsumptionRepository consumptionRepository;

    public List<Consumption> getAllConsumptions() {
        return consumptionRepository.findAll();
    }

    public Consumption saveConsumption(Consumption consumption) {
        return consumptionRepository.save(consumption);
    }
}

