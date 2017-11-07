package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reservar;

public class resultadoController {

	protected void procesarPeticion(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		try {
			Calendar calendario = Calendar.getInstance();

			String dia = Integer.toString(calendario.get(Calendar.DATE));
			String mes = Integer.toString(calendario.get(Calendar.MONTH)+1);
			String annio = Integer.toString(calendario.get(Calendar.YEAR));

			String fechaActual = annio + "-" + mes + "-" + dia;
			String rutMedico = request.getParameter("rutMedico");			
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("ciudad");
			String rutPaciente = request.getParameter("rutPaciente");

			ResultSet horas = Reservar.obtencionHoras(rutMedico, fechaActual);
			ResultSet medico = Reservar.detallesMedico(rutMedico);

			request.setAttribute("listaHoras", horas);
			request.setAttribute("detalleMedico", medico);
			request.setAttribute("fechaActual", fechaActual);
			request.setAttribute("especialidad", especialidad);
			request.setAttribute("area", area);
			request.setAttribute("ciudad", ciudad);
			request.setAttribute("rutPaciente", rutPaciente);
			request.getRequestDispatcher("/reserva.jsp").forward(request, response);

			request.getRequestDispatcher("/resultado.jsp").forward(request, response);

		} catch (Exception e) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}		
	}	

}
