package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Film;

public class StorageService {

	private List<Film> db = new ArrayList<Film>();

	public void add(Film film){
		Film newFilm = new Film(film.getTytul(), film.getRok_premiery());
		db.add(newFilm);
	}

	public List<Film> getAllPersons(){
		return db;
	}

}

/*
public class StorageService {
	
	private List<Rezyser> db = new ArrayList<Rezyser>();
	
	public void add(Rezyser person){
		Rezyser newPerson = new Rezyser(person.getTytul(), person.getRok_premiery());
		db.add(newPerson);
	}
	
	public List<Rezyser> getAllPersons(){
		return db;
	}

}
*/

/*
package com.example.servletjspdemo.domain;

public class Rezyser {

    private String imie = "Jan";
    private String nazwisko = "Kowalski";

    public Rezyser() {
        super();
    }

    public Rezyser(String imie, String nazwisko) {
        super();
        this.imie = imie;
        this.nazwisko = nazwisko;
    }

    public String getImie() {
        return imie;
    }
    public void setImie(String imie) {
        this.imie = imie;
    }
    public String getNazwisko() {
        return nazwisko;
    }
    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }
}
 */