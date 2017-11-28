package Controladores;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reserva;

@WebServlet("/reservaController")
public class reservaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public reservaController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void procesandoPeticion(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			
			try {
				
				String idHora = request.getParameter("idHora");
				String rutMedico = request.getParameter("rutMedico");
				String especialidad = request.getParameter("especialidad");
				String area = request.getParameter("area");
				String ciudad = request.getParameter("ciudad");
				String rutPaciente = request.getParameter("rutPaciente");

		
				ResultSet paciente = Reserva.consultarPaciente(rutPaciente);
				ResultSet detalleHora = Reserva.detalleHora(idHora);
				ResultSet medico = Reserva.detalleMedico(rutMedico);
				request.setAttribute("paciente", paciente);
				request.setAttribute("detalleHora", detalleHora);
				request.setAttribute("idHora", idHora);
				request.setAttribute("rutMedico", rutMedico);
				request.setAttribute("especialidad", especialidad);
				request.setAttribute("area", area);
				request.setAttribute("ciudad", ciudad);
				request.setAttribute("rutPaciente", rutPaciente);
				request.getRequestDispatcher("/reserva.jsp").forward(request, response);

			}
			catch (Exception e)
			{
				request.setAttribute("error", "Error al intentar cargar los datos");
				request.getRequestDispatcher("/erros.jsp").forward(request, response);
		}
	}	
}
