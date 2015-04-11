package swith_newlook.managers;

import java.util.List;

import swith_newlook.dao.impl.ItemCarteDao;
import swith_newlook.entities.ItemCarte;

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
	
	public List<ItemCarte> dispoBoissons(){
		return itemCarteDao.getAllDispo(ItemCarte.BOISSON);
	}
	public List<ItemCarte> dispoPlats(){
		return itemCarteDao.getAllDispo(ItemCarte.PLAT);
	}
	public List<ItemCarte> dispoDesserts(){
		return itemCarteDao.getAllDispo(ItemCarte.DESSERT);
	}
	public List<ItemCarte> dispoMenus(){
		return itemCarteDao.getAllDispo(ItemCarte.MENU);
	}

}
