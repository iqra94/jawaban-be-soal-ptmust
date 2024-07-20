package programmerzamannow.restful.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Table(name = "consumptions")
@Entity
@Data
public class Consumption {

//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;

    @Id
    private String id;

    private LocalDateTime createdAt;
    private String name;
    private int maxPrice;

    // getters and setters
}

