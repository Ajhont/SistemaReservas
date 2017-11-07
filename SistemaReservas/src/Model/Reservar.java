package Model;

import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class Reservar {

	public static ResultSet listaEspecialidades() throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM especialidad";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}

	public static ResultSet listaAreas() throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM area";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}

	public static ResultSet solicitudEspecialistas(String especialidad, String area, String ciudad) throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM medicos as med";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
}
