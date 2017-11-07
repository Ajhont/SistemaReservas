package Controladores;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reserva;

public class busquedaController {
	
	protected void buscarEspecialistas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("optradio");
			String rutPaciente = request.getParameter("rutP");

			ResultSet listado = Reserva.solicitudEspecialistas(especialidad, area, ciudad);
			request.setAttribute("listaMedicos", listado);
			request.setAttribute("rutPaciente", rutPaciente);
			request.getRequestDispatcher("/resultado.jsp").forward(request, response);
		}
		catch (Exception e)
		{
			request.setAttribute("error", "Error al intentar acceder a los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}	
}
