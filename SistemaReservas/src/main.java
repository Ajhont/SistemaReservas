import Model.Conexion;

public class main {

	public static void main(String[] args) {
		

		
		try {
			Conexion con  = new Conexion();
			
			if (con!=null) {
				System.out.println("funca");
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}