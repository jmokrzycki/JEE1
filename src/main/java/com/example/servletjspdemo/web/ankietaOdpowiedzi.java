package com.example.servletjspdemo.web;

import javax.servlet.http.HttpServlet;

import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = "/ankietaOdpowiedz")
public class ankietaOdpowiedzi extends HttpServlet {
    private int iloscOdpowiedzi;
    private int sensacyjny;
    private int scifi;
    private int horror;
    private int akcja;
}