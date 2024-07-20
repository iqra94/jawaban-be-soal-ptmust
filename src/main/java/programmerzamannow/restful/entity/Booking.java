package programmerzamannow.restful.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Table(name = "bookings")
@Entity
@Data
public class Booking {

//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;

    @Id
    private String id;

    private LocalDateTime bookingDate;
    private String officeName;
    private LocalDateTime startTime;
    private LocalDateTime endTime;
    private int participants;
    private String roomName;


    @OneToMany
    @JoinColumn(name = "booking_id")
    private List<Consumption> listConsumption;
//    @ManyToMany
//    @JoinTable(
//            name = "booking_consumption",
//            joinColumns = @JoinColumn(name = "booking_id"),
//            inverseJoinColumns = @JoinColumn(name = "consumption_id")
//    )
//    private List<Consumption> listConsumption;

    // getters and setters
}

