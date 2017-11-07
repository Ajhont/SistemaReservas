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
	public static ResultSet solicitudEspecialistas(String especialidad, String area , String ciudad )
						throws Exception{
	
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "SELECT * FROM medicos as med "+
		"inner join clinica as cli "+
		"on med.idClinica = cli.idClinica "+
		"inner join ciudad as ciu "+
		"on cli.idCiudad = ciu.idCiudad "+
		"inner join area_medicos as are_med "+
		"on med.rutMedico = are.med.Medicos_rutMedico "+
		"inner join ciudad as area "+
		"on are_med.Area_idArea = area.idArea "+
		"inner join sysreservas.especialidad as esp "+
		"on med.idEspecialidad = esp.idEspecialidad "+
		"where esp.nombreEspecialidad = '"+especialidad+
		"' and ciu.nombreCiudad = '"+ciudad+
		"' and area.nombreArea = '"+area+ "'";
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		return rs;		
		
	}
}