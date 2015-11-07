package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/ankieta")
public class AnkietaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>Ankietasda</h2><h3>Wybierz swoje ulubione gatunki filmowe:</h3>" +
				"<form action='data'>" +
				"<input type='checkbox' name='ankietaOdpowiedzi' value='sensacyjny'>Sensacyjny<br />" +
				"<input type='checkbox' name='ankietaOdpowiedzi' value='scifi'>Sci-Fi<br />" +
				"<input type='checkbox' name='ankietaOdpowiedzi' value='horror'>Horror<br />" +
				"<input type='checkbox' name='ankietaOdpowiedzi' value='akcja'>Akcja<br />" +
				"<input type='submit' value=' OK' />" +
				"</form>" +
				"</body></html>");
		out.close();
	}

}
