package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



public class Reserva {

	public static ResultSet listaEspecialidades() throws Exception{
		
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "select * from especialidad";
		
		Statement st = con.createStatement();
		
		ResultSet rs =st.executeQuery(query);
		return rs;				
	}
	public static ResultSet listaAreas() throws Exception{
		
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "select * from area";
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
}