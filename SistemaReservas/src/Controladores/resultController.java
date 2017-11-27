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

@WebServlet("/resultController")
public class resultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}
	
	protected void procesarPeticion(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			
			try {
				String fecha = request.getParameter("fecha");
				if(fecha==null) {
				Calendar calendario = Calendar.getInstance();
				
				String dia = Integer.toString(calendario.get(Calendar.DATE));
				String mes = Integer.toString(calendario.get(Calendar.MONTH)+1);
				String annio = Integer.toString(calendario.get(Calendar.YEAR));
				
				fecha = annio + "-" + mes + "-" + dia;
				
				}
				String rutMedico = request.getParameter("rutMedico");
				String especialidad = request.getParameter("especialidad");
				String area = request.getParameter("area");
				String ciudad = request.getParameter("ciudad");
				String rutPaciente = request.getParameter("rutPaciente");
				
				ResultSet horas = Reserva.obtencionHoras(rutMedico, fecha);
				ResultSet medico = Reserva.detalleMedico(rutMedico);
				
				request.setAttribute("listaHoras", horas);
				request.setAttribute("detalleMedico", medico);
				request.setAttribute("fechaActual", fecha);
				request.setAttribute("especialidad", especialidad);
				request.setAttribute("area", area);
				request.setAttribute("ciudad", ciudad);
				request.setAttribute("rutPaciente", rutPaciente);
				request.getRequestDispatcher("/horas.jsp").forward(request, response);
			}
			catch (Exception e)
			{
				request.setAttribute("error", "Error al intentar acceder a los datos");
				request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}	
}
