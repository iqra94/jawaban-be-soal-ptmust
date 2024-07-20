package programmerzamannow.restful.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import programmerzamannow.restful.entity.Booking;
import programmerzamannow.restful.entity.Consumption;
import programmerzamannow.restful.repository.BookingRepository;
import programmerzamannow.restful.repository.ConsumptionRepository;

import java.util.List;
import java.util.UUID;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private ConsumptionRepository consumptionRepository;

    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

    public Booking saveBooking(Booking booking) {
        for (Consumption consumption : booking.getListConsumption()) {
            if (consumption.getId() == null || consumption.getId().isEmpty()) {
                consumption.setId(UUID.randomUUID().toString());
            }
            consumptionRepository.save(consumption);
        }

        return bookingRepository.save(booking);
    }
}

