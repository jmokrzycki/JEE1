package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Film;
import com.example.servletjspdemo.domain.Rezyser;

public class StorageService {

	private List<Film> db = new ArrayList<Film>();

    public void add(Film film){
        Film newFilm = new Film(film.getTytul(), film.getRok_premiery());
        db.add(newFilm);
    }

    public void delete(Film film){
        int i = 0;
        for(Film f : db){
            if(f.getTytul().equals(film.getTytul())){
                break;
            }
            i++;
        }
        db.remove(i);
    }

    public Film searchFilm(Film film){
        int i = 0;
        for(Film f : db){
            if(f.getTytul().equals(film.getTytul())){
                break;
            }
            i++;
        }
        return db.get(i);
    }

    public void updateFilm(Film film_stary, Film film){
        int i = 0;
        for(Film f : db){
            if(film_stary.getTytul().equals(f.getTytul())){
                break;
            }
            i++;
        }
        db.get(i).setTytul(film.getTytul());
        db.get(i).setRok_premiery(film.getRok_premiery());
    }

    public List<Film> getAllFilm(){
        return db;
    }



    private List<Rezyser> db1 = new ArrayList<Rezyser>();

    public void addRezyser(Rezyser rezyser){
        Rezyser newRezyser = new Rezyser(rezyser.getImie(), rezyser.getNazwisko());
        db1.add(newRezyser);
    }

    public void deleteRezyser(Rezyser rezyser){
        int i = 0;
        for(Rezyser r : db1){
            if(r.getImie().equals(rezyser.getImie())){
                break;
            }
            i++;
        }
        db1.remove(i);
    }

    public Rezyser searchRezyser(Rezyser rezyser){
        int i = 0;
        for(Rezyser r : db1){
            if(rezyser.getImie().equals(r.getImie())){
                return r;
            }
            i++;
        }
        return db1.get(i);
    }

    public void updateRezyser(Rezyser rezyser_stary, Rezyser rezyser){
        for(Rezyser r : db1){
            if(rezyser_stary.getImie().equals(r.getImie())){
                r.setImie(rezyser.getImie());
                r.setNazwisko(rezyser.getNazwisko());
            }
        }
    }


    public List<Rezyser> getAllRezyser(){
        return db1;
    }
}

