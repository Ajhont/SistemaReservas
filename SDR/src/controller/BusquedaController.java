package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reservas;


@WebServlet("/BusquedaController")
public class BusquedaController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesrPeticion(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		procesrPeticion(request, response);
	}
	
	
	protected void procesrPeticion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("optradio");
			String rutPaciente = request.getParameter("rutP");
			
			ResultSet listado = Reservas.solicitudEspecialistas(especialidad, area, ciudad);
			request.setAttribute("listaMedicos", listado);
			request.setAttribute("rutPaciente", rutPaciente);
			request.getRequestDispatcher("/resultado.jsp").forward(request, response);
			
			
			
		}
		catch (Exception e) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			
		}
		
	}
	

}
