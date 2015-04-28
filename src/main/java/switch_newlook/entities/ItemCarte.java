package switch_newlook.entities;

public class ItemCarte {
	
	public static final String SANDWICH = "SANDWICH";
	public static final String PIZZA = "PIZZA";
	public static final String PANINI = "PANINI";
	public static final String SALADE = "SALADE";
	public static final String BOISSON = "BOISSON";
	public static final String DESSERT = "DESSERT";
	public static final String MENU = "MENU";

	public static final int DISPO = 1;
	public static final int ALL = 0;
	
	
	
	private Integer idItemCarte;
	private String nom;
	private String type;
	private String description;
	private String img;
	private Boolean disponible;
	private Double prix;
	
	
	public ItemCarte(Integer idItemCarte, String nom, String type,
			String description, String img, Boolean disponible, Double prix) {
		this.idItemCarte = idItemCarte;
		this.nom = nom;
		this.type = type;
		this.description = description;
		this.img = img;
		this.disponible = disponible;
		this.prix = prix;
	}

	
	
	/**
	 * Getters & Setters 
	 * @return
	 */

	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public Boolean getDisponible() {
		return disponible;
	}


	public void setDisponible(Boolean disponible) {
		this.disponible = disponible;
	}


	public Double getPrix() {
		return prix;
	}


	public void setPrix(Double prix) {
		this.prix = prix;
	}


	public Integer getIdItemCarte() {
		return idItemCarte;
	}


	public String getType() {
		return type;
	}

	
	
}
