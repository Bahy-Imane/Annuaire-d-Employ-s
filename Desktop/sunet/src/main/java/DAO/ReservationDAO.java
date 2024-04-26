package DAO;
import java.util.List;

import modeles.Reservation;

public interface ReservationDAO {
    List<Reservation> getReservations();
    void createReservation(Reservation reservation);
    void cancelReservation(int reservationId);
}
