 package conpig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//싱글톤
public class DBManager {
	private static DBManager instance = new DBManager();
	private Connection conn;
	
	public DBManager() {
		
			try {
				Class.forName(DBConfig.DB_DRIVER);
				conn = DriverManager.getConnection(DBConfig.DB_URL, DBConfig.DB_USER, DBConfig.DB_PASS);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			}
	public static DBManager getInstance() {
		if(instance == null)
			instance = new DBManager();
		return instance;
	}
	
	public Connection getConn() {
		return conn;
	}
	
	public void close (PreparedStatement pstmt, ResultSet rs) {
		
		
			try {
				if (pstmt != null)
				pstmt.close();
			
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	}










