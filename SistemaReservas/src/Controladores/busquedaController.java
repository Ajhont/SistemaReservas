package Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.ResultSet;

import Model.Reservar;


/**
 * Servlet implementation class busquedaController
 */
@WebServlet("/busquedaController")
public class busquedaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.buscarEspecialistas(request, response);
	}

	public void buscarEspecialistas(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String especialidad = request.getParameter("especialidad");
			String area = request.getParameter("area");
			String ciudad = request.getParameter("optradio");
			String rutPaciente = request.getParameter("rutP");
			
			ResultSet listado = Reservar.solicitudEspecialistas(especialidad, area, ciudad);
			request.setAttribute("listaMedicos", listado);
			request.setAttribute("rutPaciente", rutPaciente);
			request.setAttribute("especialidad", especialidad);
			request.setAttribute("area", area);
			request.setAttribute("ciudad", ciudad);
			
			request.getRequestDispatcher("/listado.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}
