package DB_Connection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import DAO.RoomDAO;
import modeles.Room;

public class RoomDaoImp implements RoomDAO {

	@Override
	public List<Room> showRoom() {
	    List<Room> rooms = new ArrayList<>();
	    String sql = "SELECT * FROM rooms";

	    try (Connection connection = DBConnection.getConnection();
	         PreparedStatement statement = connection.prepareStatement(sql);
	         ResultSet resultSet = statement.executeQuery()) {

	        while (resultSet.next()) {
	            int roomId = resultSet.getInt("room_id");
	            String roomType = resultSet.getString("room_type");
	            double price = resultSet.getDouble("price");
	            String equipments = resultSet.getString("equipment");
	            boolean availability = resultSet.getBoolean("availability");
	            String roomPic = resultSet.getString("room_pic");

	            Room room = new Room(roomId, roomType, price, equipments, availability,roomPic);
	            rooms.add(room);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return rooms;
	}


	@Override
	public List<Room> searchRoom(String searchTerm) {
	    List<Room> rooms = new ArrayList<>();
	    String sql = "SELECT * FROM rooms WHERE room_type LIKE ?";
	    try {
	        Connection connection = DBConnection.getConnection();
	        PreparedStatement statement = connection.prepareStatement(sql);
	        statement.setString(1, "%" + searchTerm + "%");
	        ResultSet resultSet = statement.executeQuery();
	        while (resultSet.next()) {
	            Room room = new Room(
	                    resultSet.getInt("room_id"),
	                    resultSet.getString("room_type"),
	                    resultSet.getDouble("price"),
	                    resultSet.getString("equipment"),
	                    resultSet.getBoolean("availability"),
	                    resultSet.getString("room_pic")
	                    
	            );
	            rooms.add(room);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return rooms;
	}
	
	
	@Override
	 public List<Room> searchRooms(Date startDate, Date endDate) {
        List<Room> availableRooms = new ArrayList<>();
        String sql = "SELECT * FROM rooms WHERE room_id IN (SELECT room_id FROM reservations WHERE start_date <= ? AND end_date >= ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setDate(1, new java.sql.Date(endDate.getTime()));
            statement.setDate(2, new java.sql.Date(startDate.getTime()));
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int roomId = resultSet.getInt("room_id");
                    String roomType = resultSet.getString("room_type");
                    double price = resultSet.getDouble("price");
                    String equipments = resultSet.getString("equipment");
                    boolean availability = resultSet.getBoolean("availability");
                    String roomPic = resultSet.getString("room_pic");
                    Room room = new Room(roomId, roomType, price, equipments, availability, roomPic);
                    availableRooms.add(room);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return availableRooms;
    }

}
	