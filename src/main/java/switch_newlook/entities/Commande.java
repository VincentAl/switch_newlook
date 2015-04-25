package switch_newlook.entities;

import java.util.Date;
import java.util.List;

/**
 * La classe Commande contient les mêmes infos que dans la BDD 
 * avec ne plus une liste de plats qui font partie de la commande
 * et qu'il faudra ajouter dans la table 'contenir' de la BDD.
 * 
 * @author Vincent
 *
 */

public class Commande {
	
	private Integer idCommande;
	private Date date;
	private Integer idClient;
	private List<ItemCarte> listePlats;

	public Commande(Integer idCommande, Date date, Integer idClient) {
		this.idCommande = idCommande;
		this.date = date;
		this.idClient = idClient;
	}
	
	public List<ItemCarte> ajouterPlat(ItemCarte plat){
		this.listePlats.add(plat);
		
		return this.listePlats;
	}

	

	
	/**
	 * 
	 * Getters & Setters
	 */
	public Integer getIdCommande() {
		return idCommande;
	}

	public Date getDate() {
		return date;
	}

	public Integer getIdClient() {
		return idClient;
	}

	public List<ItemCarte> getListePlats() {
		return listePlats;
	}
	
}
