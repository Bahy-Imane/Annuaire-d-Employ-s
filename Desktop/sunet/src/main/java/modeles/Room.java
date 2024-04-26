package modeles;

public class Room {
	private int roomId;
	private String roomType;
	private double price;
	private String equipments;
	private boolean availability;
	private String roomPic;
	
	
	
	public Room(int roomId, String roomType, double price, String equipments, boolean availability, String roomPic) {
		super();
		this.roomId = roomId;
		this.roomType = roomType;
		this.price = price;
		this.equipments = equipments;
		this.availability = availability;
		this.roomPic = roomPic;
	}
	
	
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getEquipments() {
		return equipments;
	}
	public void setEquipments(String equipments) {
		this.equipments = equipments;
	}
	public boolean isAvailability() {
		return availability;
	}
	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
	public String getRoomPic() {
		return roomPic;
	}
	public void setRoomPic(String roomPic) {
		this.roomPic = roomPic;
	}
	

}
