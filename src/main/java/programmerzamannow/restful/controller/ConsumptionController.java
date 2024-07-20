package programmerzamannow.restful.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import programmerzamannow.restful.entity.Consumption;
import programmerzamannow.restful.service.ConsumptionService;

import java.util.List;

@RestController
@RequestMapping("/api/consumptions")
public class ConsumptionController {

    @Autowired
    private ConsumptionService consumptionService;

    @GetMapping
    public ResponseEntity<List<Consumption>> getAllConsumptions() {
        return ResponseEntity.ok(consumptionService.getAllConsumptions());
    }

    @PostMapping
    public ResponseEntity<Consumption> createConsumption(@RequestBody Consumption consumption) {
        return ResponseEntity.ok(consumptionService.saveConsumption(consumption));
    }
}

