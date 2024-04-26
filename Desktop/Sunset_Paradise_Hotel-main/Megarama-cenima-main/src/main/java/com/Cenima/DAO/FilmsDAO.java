package com.Cenima.DAO;

import java.sql.SQLException;
import java.util.List;

import com.Cenima.Classes.Film;


public interface FilmsDAO {
	
	void addFilm(Film film) throws SQLException;
	List<Film> selectAllFilms() throws SQLException;
	Film selectFilmById(int idFilm) throws SQLException;
	boolean updateFilm(Film film) throws SQLException;
	boolean deleteFilm(int idFilm) throws SQLException;
}