package Controladores;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reserva;

@WebServlet("/indexController")
public class indexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarPeticion(request, response);
	}

	protected void procesarPeticion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			request.setAttribute("lEsp", Reserva.listaEspecialidades());
			request.setAttribute("lArea", Reserva.listaAreas());
			request.getRequestDispatcher("/busqueda.jsp").forward(request, response);
		}
		catch (Exception e)
		{
			request.setAttribute("error", "Error al intentar acceder a los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}
