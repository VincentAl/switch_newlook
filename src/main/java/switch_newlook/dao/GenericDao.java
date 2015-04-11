package switch_newlook.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public abstract class GenericDao<O>{
	
	protected Connection connex;
	protected Statement stm;
	protected java.sql.PreparedStatement pstm;
	protected ResultSet res;
	
	protected GenericDao(){
		try {
			connex = (Connection) DataSourceProvider.getDataSource().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public abstract O find(Integer id);
	
	public abstract O create(O obj);
	
	public abstract O update(O obj);
	
	public abstract void delete(O obj);

}
