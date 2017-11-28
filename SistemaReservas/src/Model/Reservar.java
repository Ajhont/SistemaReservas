package Model;

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;

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
		String query = "SELECT * FROM agenda as ag " + "inner join horas_agenda as ha "
				+ "on ag.idAgenda = ha.Agenda_idAgenda " + "inner join horas as ho "
				+ "on ha.Horas_idHoras = ho.idHoras " + "where ag.rutMedico = '" + rut + "' and ho.fechaHora = '"
				+ fecha + "'";
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
	
	public static ResultSet detallesPaciente(String rutPaciente)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM paciente where rutPaciente = '" + rutPaciente + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
	public static ResultSet detalleHora(String idHora)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM horas where idHoras = '" + idHora + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
	public static ResultSet detalleReserva(String idHora)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "SELECT * FROM reserva where Horas_idHoras = '" + idHora + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
	public void crearPaciente(String rutPaciente,String nombrePaciente, String apellidoP, String apellidoM, String email, String telefono)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		Statement st = con.createStatement();
		PreparedStatement psInsertar;
		
		String query = "INSERT INTO paciente (rutPaciente,nombrePaciente,aPaternoPaciente,aMaternoPaciente,email,telefono)"+" VALUES ('"+rutPaciente+"','"+nombrePaciente+
			"','"+apellidoP+"','"+apellidoM+"','"+email+"','"+telefono+"');";
		psInsertar= con.prepareStatement(query);
		
		psInsertar.executeUpdate(query);
	}
	
	public void updatePaciente(String rutPaciente,String nombrePaciente, String apellidoP, String apellidoM, String email, String telefono)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "UPDATE `sysreservas`.`paciente`\r\n" + 
				"SET\r\n" + 
				"`nombrePaciente` = '"+nombrePaciente+"',\r\n" + 
				"`aPaternoPaciente` = '"+apellidoP+"',\r\n" + 
				"`aMaternoPaciente` = '"+apellidoM+"',\r\n" + 
				"`email` = '"+email+"',\r\n" + 
				"`telefono` = '"+telefono+"'\r\n" + 
				"WHERE `rutPaciente` = '"+rutPaciente+"';";
		Statement st = con.createStatement();
		st.executeUpdate(query);
	}
	
	public void reservarHora(String rutMedico, String rutPaciente,  String idHora)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		Statement st = con.createStatement();
		PreparedStatement psInsertar;
		String query = "INSERT INTO reserva (rutMedico,rutPaciente,Horas_idHoras) "+"VALUES('"+rutMedico+"','"+rutPaciente+"','"+idHora+"');";
		psInsertar= con.prepareStatement(query);
		
		psInsertar.executeUpdate(query);
	}
	
	public void actualizarEstadoHora(String idHora)throws Exception {
		Conexion conexion = new Conexion();
		Connection con = conexion.getConexion();
		String query = "UPDATE `sysreservas`.`horas`\r\n" + 
				"SET\r\n" + 
				"`estadoHoras` = 0\r\n" + 
				"WHERE `idHoras` = '"+idHora+"'";
		Statement st = con.createStatement();
		st.executeUpdate(query);
	}
	
}
