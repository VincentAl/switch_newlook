package switch_newlook.managers;

import java.util.HashMap;
import java.util.List;

import switch_newlook.dao.impl.ItemCarteDao;
import switch_newlook.entities.ItemCarte;

public class CarteManager {

	/**
	 * Manager qui va gérer tout ce qui est rapport avec la carte,
	 * récupération des données et modifications.
	 * 
	 */
	
	private static CarteManager instance;
	private ItemCarteDao itemCarteDao;
	
	private CarteManager() {
		itemCarteDao = new ItemCarteDao();
	}
	
	public static CarteManager getInstance(){
		if(instance != null){
			return instance;
		}else{
			instance = new CarteManager();
			return instance;
		}
	}
	
	public List<ItemCarte> listItemCarte(String type, int dispo){
		
		if( dispo == 1){
			return itemCarteDao.getAllDispo(type);
		}else if(dispo == 0){
			return itemCarteDao.getAll(type);
		}
		return null;
	}
	
	public HashMap<String, List<ItemCarte>> listFullCarte(int dispo){
		 HashMap<String, List<ItemCarte>> fullCarte = new HashMap<String, List<ItemCarte>>();
		 
		 fullCarte.put("Sandwiches", this.listItemCarte(ItemCarte.SANDWICH, dispo));
		 fullCarte.put("Pizzas", this.listItemCarte(ItemCarte.PIZZA, dispo));
		 fullCarte.put("Paninis", this.listItemCarte(ItemCarte.PANINI, dispo));
		 fullCarte.put("Salades", this.listItemCarte(ItemCarte.SALADE, dispo));
		 fullCarte.put("Desserts", this.listItemCarte(ItemCarte.DESSERT, dispo));
		 fullCarte.put("Boissons", this.listItemCarte(ItemCarte.BOISSON, dispo));
		 
		 
		return fullCarte;
	}

}
