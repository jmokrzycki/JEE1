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

    public List<Film> searchFilm(Film film){
        List<Film> dbOut = new ArrayList<Film>();

        //int i = 0;
        //for(Film f : db){
        //    if(f.getTytul().equals(film.getTytul())){
        //        dbOut.add(film);
        //    }
        //}
        return dbOut;
    }

    public List<Film> getAllFilm(){
        return db;
    }



   //private List<Rezyser> db = new ArrayList<Rezyser>();
//
   //public void add(Rezyser rezyser){
   //    Rezyser newRezyser = new Rezyser(rezyser.getImie(), rezyser.getNazwisko());
   //    db.add(newRezyser);
   //}
//
   //public List<Rezyser> getAllRezyser(){
   //        return db;
   //}

}

