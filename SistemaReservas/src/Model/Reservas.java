package Model;

import java.sql.ResultSet;
import java.sql.Statement;
import com.mysql.jdbc.Connection;
import com.sun.corba.se.spi.orbutil.fsm.State;



public class Reservas {
	
	public static ResultSet listaEspecialidades() throws Exception{
		
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "SELECT * FROM especialidad";
		
		Statement st =  con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		
		
		return rs;
	}
	
	public static ResultSet listaAreas() throws Exception{
		
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "SELECT * FROM sysreservas.area";
		
		Statement st =  con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		
		return rs;
		
	}
	
	public static ResultSet solicitudEspecialista(String especialidad, String area, String ciudad) throws Exception{
		
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		
		String query = "SELECT * FROM medicos as med " +
				"inner join clinica as cli " +
				"on med.idClinica = cli.idClinica " +
				"inner join ciudad as ciu " +
				"on cli.idCiudad = ciu.idCiudad " +
				"inner join area_medicos as are_med " +
				"on med.rutMedico = are_med.Medicos_rutMedico " +
				"inner join area as area " +
				"on are_med.Area_idArea = area.idArea " +
				"inner join especialidad as esp " +
				"on med.idEspecialidad = esp.idEspecialidad " +
				"where esp.nombreEspecialidad = '" + especialidad +
				"' and ciu.nombreCiudad = '" + ciudad +
				"' and area.nombreArea = '" + area + "'";
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		
	
		
		return rs;
	}
	
	public static ResultSet obtencionHoras(String rut, String fecha)
			throws Exception {

		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();

		String query = "SELECT * FROM agenda as ag " +
				"inner join horas_agenda as ha " +
				"on ag.idAgenda = ha.Agenda_idAgenda " +
				"inner join horas as ho " +
				"on ha.Horas_idHoras = ho.idHoras " +
				"where ag.rutMedico = '" + rut +
				"' and ho.fechaHora = '2017-11-07'";

		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(query);
		return rs;		
	}
	
	public static ResultSet detallesMedico(String rut)
			throws Exception {

		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();

		String query = "SELECT * FROM medicos as med " +
				"where med.rutMedico = '" + rut + "'";

		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(query);
		return rs;		
	}
}

