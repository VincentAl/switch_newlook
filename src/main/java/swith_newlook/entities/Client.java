package swith_newlook.entities;

public class Client {
	
	private Integer idClient;
	private String pseudo;
	private String password;
	private String mail;

	public Client(String pseudo, String password) {
		this.pseudo = pseudo;
		this.password = password;
	}

	public Client(Integer idClient, String pseudo, String mail) {
		this.idClient = idClient;
		this.pseudo = pseudo;
		this.mail = mail;
	}

	
	
	/**
	 * 
	 * Getters & Setters
	 */
	public Integer getIdClient() {
		return idClient;
	}

	public String getPseudo() {
		return pseudo;
	}

	public String getPassword() {
		return password;
	}

	public String getMail() {
		return mail;
	}
	
}
