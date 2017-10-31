package Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.Reservar;

@WebServlet("/indexController")
public class indexController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.procesarPeticion(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void procesarPeticion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			request.setAttribute("lEsp", Reservar.listaEspecialidades());
			request.setAttribute("lAreas", Reservar.listaAreas());
			request.getRequestDispatcher("/busqueda.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("error", "Error al intentar acceder a os datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}
