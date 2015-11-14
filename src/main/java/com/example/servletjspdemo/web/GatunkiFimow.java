package com.example.servletjspdemo.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by Jarek on 2015-11-14.
 */
public class GatunkiFimow {
    List<String> gatunkiFilmow = new ArrayList<String>();
    Random random = new Random();

    public String getData(){
        gatunkiFilmow.add("Sensacyjny");
        gatunkiFilmow.add("Akcji");
        gatunkiFilmow.add("Horror");
        gatunkiFilmow.add("Science Fiction");
        gatunkiFilmow.add("Fantasyka");
        gatunkiFilmow.add("Musical");
        gatunkiFilmow.add("Thriller");
        gatunkiFilmow.add("Dramat");
        gatunkiFilmow.add("Dokumentalny");
        gatunkiFilmow.add("Biograficzny");
        return gatunkiFilmow.get(random.nextInt(10)); }
}
