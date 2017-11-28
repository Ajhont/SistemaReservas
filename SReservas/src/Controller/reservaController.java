package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reservar;

@WebServlet("/reservaController")
public class reservaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesarPetición(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesarPetición(request, response);
	}
	
	protected void procesarPetición(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String idHora = request.getParameter("idHora");
			String rutMedico = request.getParameter("rutMedico");
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("ciudad");
			String rutPaciente = request.getParameter("rutPaciente");
			
			ResultSet paciente = Reservar.consultarPaciente(rutPaciente);
			ResultSet detalleHora = Reservar.detalleHora(idHora);
			ResultSet medico = Reservar.detalleHora(rutMedico);

			request.setAttribute("paciente", paciente);
			request.setAttribute("detalleHora", detalleHora);
			request.setAttribute("detalleMedico", medico);
			request.setAttribute("idHora", idHora);
			request.setAttribute("rutMedico", rutMedico);
			request.setAttribute("especialidad", especialidad);
			request.setAttribute("area", area);
			request.setAttribute("ciudad", ciudad);
			request.setAttribute("rutPaciente", rutPaciente);
			
			request.getRequestDispatcher("/paciente.jsp").forward(request, response);

		} catch (Exception e) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}		
	}


}
