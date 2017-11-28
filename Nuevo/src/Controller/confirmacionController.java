package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reservar;

@WebServlet("/confirmacionController")
public class confirmacionController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}
	
	protected void procesarPeticion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String idHora = request.getParameter("idHora");
			String rutMedico = request.getParameter("rutMedico");		
			String rutPaciente = request.getParameter("rutP");
			String nombreP = request.getParameter("nombreP");
			String aPaternoP = request.getParameter("aPaternoP");		
			String aMaternoP = request.getParameter("aMaternoP");
			String emailP = request.getParameter("emailP");
			
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("ciudad");
			
			Reservar.actualizarHora(idHora, false);
			Reservar.gestionPaciente(rutPaciente, nombreP, aPaternoP, aMaternoP, emailP);
			ResultSet reserva = Reservar.insertarReserva(rutMedico, rutPaciente, idHora);
			ResultSet detalleHora = Reservar.detalleHora(idHora);
			ResultSet detallemedico = Reservar.detallesMedico(rutMedico);
									
			if(reserva.next()) {
				int claveGenerada = reserva.getInt(1);
				
				request.setAttribute("detalleMedico", detallemedico);
				request.setAttribute("detalleHora", detalleHora);
				request.setAttribute("claveGenerada", claveGenerada);
				request.setAttribute("especialidad", especialidad);
				request.setAttribute("area", area);
				request.setAttribute("ciudad", ciudad);
				
				request.getRequestDispatcher("/confirmación.jsp").forward(request, response);
			}			
		}
		
		catch(Exception e)
		{
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		
	}

}
