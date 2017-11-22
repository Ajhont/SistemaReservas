package Controladores;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reservar;

/**
 * Servlet implementation class horasController
 */
@WebServlet("/horasController")
public class horasController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.procesarPeticion(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void procesarPeticion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String idHora = request.getParameter("idHora");			
			String rutMedico = request.getParameter("rutMedico");
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("ciudad");
			String rutPaciente = request.getParameter("rutPaciente");
			
			ResultSet hora = Reservar.detalleHora(idHora);
			ResultSet medico = Reservar.detallesMedico(rutMedico);
			ResultSet paciente = Reservar.detallesPaciente(rutPaciente);
			
			request.setAttribute("detalleHora", hora);
			request.setAttribute("detalleMedico", medico);
			request.setAttribute("detallePaciente", paciente);
			request.setAttribute("especialidad", especialidad);
			request.setAttribute("area", area);
			request.setAttribute("ciudad", ciudad);
			request.setAttribute("rutPaciente", rutPaciente);
			request.getRequestDispatcher("reserva.jsp").forward(request, response);
			
		}catch (Exception ex) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

}
