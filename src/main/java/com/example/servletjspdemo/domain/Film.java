package com.example.servletjspdemo.domain;

public class Film {
	
	private String tytul = "unknown";
	private String rok_premiery = "1900";

	
	public Film() {
		super();
	}
	
	public Film(String tytul, String rok_premiery) {
		super();
		this.tytul = tytul;
		this.rok_premiery = rok_premiery;
	}

	public String getTytul() {
		return tytul;
	}
	public void setTytul(String tytul) {
		this.tytul = tytul;
	}
	public String getRok_premiery() {
		return rok_premiery;
	}
	public void setRok_premiery(String rok_premiery) {
		this.rok_premiery = rok_premiery;
	}
}