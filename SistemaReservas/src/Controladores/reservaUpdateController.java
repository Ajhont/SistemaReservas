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
 * Servlet implementation class reservaUpdateController
 */
@WebServlet("/reservaUpdateController")
public class reservaUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reservaUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.procesarPeticion(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void procesarPeticion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String rutMedico = request.getParameter("rutMedico");
			String idHora = request.getParameter("idHora");
			String rutPaciente = request.getParameter("rutPaciente");
			String aPaterno = request.getParameter("aPaterno");
			String telefono = request.getParameter("telefono");
			String nombrePaciente = request.getParameter("nombrePaciente");
			String aMaterno = request.getParameter("aMaterno");
			String email = request.getParameter("email");
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("ciudad");
			
			Reservar reserva = new Reservar();
			
			reserva.updatePaciente(rutPaciente, nombrePaciente, aPaterno, aMaterno, email, telefono);
			reserva.reservarHora(rutMedico, rutPaciente, idHora);
			reserva.actualizarEstadoHora(idHora);
			
			ResultSet medico = Reservar.detallesMedico(rutMedico);
			ResultSet hora = Reservar.detalleHora(idHora);
			ResultSet detalleReserva = Reservar.detalleReserva(idHora);
			
			
			request.setAttribute("detalleMedico", medico);
			request.setAttribute("detalleHora", hora);
			request.setAttribute("detalleReserva", detalleReserva);
			request.setAttribute("especialidad", especialidad);
			request.setAttribute("area", area);
			request.setAttribute("ciudad", ciudad);
			
			
			request.getRequestDispatcher("confirmacion.jsp").forward(request, response);
			
		}catch (Exception ex) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

}
