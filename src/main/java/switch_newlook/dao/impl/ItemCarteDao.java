package switch_newlook.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import switch_newlook.dao.GenericDao;
import switch_newlook.entities.ItemCarte;

public class ItemCarteDao extends GenericDao<ItemCarte>{

	public ItemCarteDao() {
		super();
	}

	@Override
	public ItemCarte find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemCarte create(ItemCarte obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemCarte update(ItemCarte obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(ItemCarte obj) {
		// TODO Auto-generated method stub
		
	}
	
	public List<ItemCarte> getAllDispo(String type){
		List<ItemCarte> allDispo = new ArrayList<ItemCarte>();
		
		try {
			pstm = connex.prepareStatement("SELECT * FROM itemcarte WHERE type = ? ORDER BY nom");
			pstm.setString(1, type);
			
			res = pstm.executeQuery();
			
			while(res.next()){
				allDispo.add(
					new ItemCarte(
						res.getInt("idItemCarte"), 
						res.getString("nom"),
						res.getString("type"), 
						res.getString("description"), 
						res.getString("img"),
						res.getBoolean("disponible"), 
						res.getDouble("prix")
					)
				);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allDispo;
	}

}
