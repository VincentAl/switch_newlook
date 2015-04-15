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
	public List<ItemCarte> dispoPaninis(){
		return itemCarteDao.getAllDispo(ItemCarte.PANINI);
	}
	public List<ItemCarte> dispoPizzas(){
		return itemCarteDao.getAllDispo(ItemCarte.PIZZA);
	}
	public List<ItemCarte> dispoSalades(){
		return itemCarteDao.getAllDispo(ItemCarte.SALADE);
	}
	public List<ItemCarte> dispoSandwiches(){
		return itemCarteDao.getAllDispo(ItemCarte.SANDWICH);
	}
	public List<ItemCarte> dispoDesserts(){
		return itemCarteDao.getAllDispo(ItemCarte.DESSERT);
	}
	public List<ItemCarte> dispoMenus(){
		return itemCarteDao.getAllDispo(ItemCarte.MENU);
	}

}
