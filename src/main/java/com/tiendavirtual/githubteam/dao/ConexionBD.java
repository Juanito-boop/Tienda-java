package com.tiendavirtual.githubteam.dao;

import java.sql.*;

public class ConexionBD {

	/*private String bd = "tienda_virtual";
	private String login = "root";
	private String passw = "admin";
	private String url = "jdbc:mysql://localhost/" + bd;
	*/
	private String bd = "Grupo02GitHubTeam";
	private String login = "admin";
	private String passw = "MisionTIC2022GRUPO02";
	private String url = "jdbc:mysql://misiontic2022grupo02.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/" + bd;

	public Connection getConexionDB() {
		Connection con = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, login, passw);

			if (con != null) {
				System.out.println("Conexion a base de datos " + bd + " Correcta\n");
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (Exception e) {
			System.out.println(e);
		}

		return con;
	}

}
