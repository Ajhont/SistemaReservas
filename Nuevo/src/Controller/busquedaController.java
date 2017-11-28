package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Reservar;


@WebServlet("/busquedaController")
public class busquedaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		buscarEspecialistas(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {		
		doGet(request, response);
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
			
			request.getRequestDispatcher("/resultado.jsp").forward(request, response);
			
		}
		catch(Exception e)
		{
			request.setAttribute("error", "Error al intentar cargar los datos");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		
	}

}
