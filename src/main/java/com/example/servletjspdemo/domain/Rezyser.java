package com.example.servletjspdemo.domain;

public class Rezyser {

    private String imie = "unknown";
    private String nazwisko = "1900";


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