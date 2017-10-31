package Model;

import java.sql.*;
import com.mysql.jdbc.Connection;

public class Conexion {
	
	private final String servidor = "jdbc:mysql://localhost:3306/sysreservas";
	private final String usuario = "root";
	private final String contrasenia = "root";
	public Connection conexion = null;
	
	public Conexion() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		conexion = 
				(Connection)DriverManager.getConnection(servidor,usuario,contrasenia);
	}
 
	public Connection getConexion() {
		return conexion;
	}
}
