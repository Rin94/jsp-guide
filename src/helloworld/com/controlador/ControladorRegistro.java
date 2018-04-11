package helloworld.com.controlador;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import java.sql.*;
import helloworld.com.modelo.ConnectionManager;


public class ControladorRegistro {
	
	/**
	 * 
	 * @param rs Resultado de la consulta
	 * @return La llave del ultimo registro
	 */
	private static int returnKey(ResultSet rs) {
		int key=0;
		try {
			if ( rs.next() ) {
			    // Retrieve the auto generated key(s).
			     key= rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en: "+e);;
		}
		return key;
	}
	
	
	/**
	 * 
	 * @param select Arreglo de opciones tecnologicas que se pueden escoger en el registro
	 * @param key llave primaria del usuario
	 * @return verdadero si se pudo registrar la tecnología
	 * @throws SQLException
	 */
	private static boolean registro_Usuario_Tecnologia(String select[], int key) throws SQLException {
		Connection con = ConnectionManager.getConnection();
		Statement stmt = null;
		String sql="";
		boolean registroExitoso=false;
		
		for (int i=0; i<select.length;i++){
			stmt = con.createStatement();
			sql="INSERT INTO USUARIOS_TECNOLOGIA(id_usuario, id_tecnologia) VALUES("+key+","+select[i]+")";
			if(stmt.executeUpdate(sql)==1) {
				 registroExitoso=true;
			}
			else {
				registroExitoso=false;
			}
		}
		return registroExitoso;
	}
	
	/**
	 * 
	 * @param request peticion al servidor, contiene la información del formulario
	 * @return verdero si se agrego bien el registro
	 * @throws SQLException
	 */
	public static boolean  NuevoRegistro(ServletRequest request) throws SQLException {
		boolean registroExitoso=false;
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String correo=request.getParameter("email");
		String pass=request.getParameter("password");
		String select[] = request.getParameterValues("tecnologia"); 
		Statement stmt = null;
		Connection con = ConnectionManager.getConnection();
		stmt = con.createStatement();
		String sql= "INSERT INTO USUARIOS (correo,contrasena,nombre, apellido) VALUES('"+correo+"','"+pass+"','"+nombre+"','"+apellido+"')";
		stmt.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
		ResultSet rs = stmt.getGeneratedKeys();
		int key= returnKey(rs);
		registroExitoso=registro_Usuario_Tecnologia(select, key);
		return registroExitoso;
		
	}
	
	public static boolean IngresarSistema(ServletRequest request)throws SQLException{
		boolean ingresoExitoso=false;
		String correo=request.getParameter("email");
		String pass=request.getParameter("password");
		Connection con = ConnectionManager.getConnection();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM usuarios WHERE correo=? AND contrasena=?");
		ps.setString(1, correo);
		ps.setString(2, pass);
		ResultSet rs = ps.executeQuery();
		if(rs.absolute(1)) {
			ingresoExitoso=true;
		}
		
		return ingresoExitoso;
	}
	
	

}
