package model;

import java.sql.*;
import com.mysql.jdbc.Connection;

public class Conexion {

	private final String servidor = "jdbc:mysql://localhost:3306/sysreservas";
	private final String usuario = "root";
	private final String contraseña = "1234";
	
	public Connection connection = null;
	
	public Conexion() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		connection =(Connection)DriverManager.getConnection(servidor, usuario, contraseña);
	}
	public Connection getConexion() {
		return connection;
	}
}
