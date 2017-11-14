package model;

import java.sql.*;;


public class Reservas {

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
		String query = "SELECT * FROM medicos as med \r\n" + 
				"inner join especialidad esp on med.idEspecialidad = esp.idEspecialidad\r\n" + 
				"inner join clinica cli on med.idClinica = cli.idClinica\r\n" + 
				"inner join ciudad on cli.idCiudad= ciudad.idCiudad\r\n" + 
				"inner join area_medicos aream on med.rutMedico= aream.Medicos_rutMedico\r\n" + 
				"inner join area on aream.Area_idArea= area.idArea\r\n" + 
				"where esp.nombreEspecialidad = '"+especialidad+"' and\r\n" + 
				"ciudad.nombreCiudad = '"+ciudad+"' and\r\n" + 
				"area.nombreArea = '"+area+"'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}

	public static ResultSet obtencioHoras(String rut, String fecha) throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = 
				"SELECT * FROM agenda as ag " + 
				"inner join horas_agenda as ha "+ 
				"on ag.idAgenda = ha.Agenda_idAgenda " + 
				"inner join horas as ho "+ 
				"on ha.Horas_idHoras = ho.idHoras " + 
				"where ag.rutMedico = '" + rut +
				"' and ho.fechaHora = '"+ fecha + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}

	public static ResultSet detallesMedico(String rut) throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM medicos as med where med.rutMedico = '" + rut + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
}
	


