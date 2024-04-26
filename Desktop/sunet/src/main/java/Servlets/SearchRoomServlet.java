package Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RoomDAO;
import DB_Connection.RoomDaoImp;
import modeles.Room;

@WebServlet("/SearchRoomServlet")
public class SearchRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RoomDAO roomDAO;

    public void init() {
        roomDAO = new RoomDaoImp();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomType = request.getParameter("roomType");

        List<Room> rooms = roomDAO.searchRoom(roomType);

        request.setAttribute("rooms", rooms);

        request.getRequestDispatcher("rooms.jsp").forward(request, response);
    }
}

