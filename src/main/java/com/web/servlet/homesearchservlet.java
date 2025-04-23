package com.web.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dbservice.DBservice;
import com.web.dto.Flight;

@WebServlet("/homesearchservlet")
public class homesearchservlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Flight f = new Flight();
	    f.setDepart(request.getParameter("depart"));
	    f.setDest(request.getParameter("dest"));
		DBservice db = new DBservice();
	    Flight s = db.searchFlight();
	    System.out.print(s);
	    request.setAttribute("flight", s);
	    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
	    rd.forward(request, response);
	}

}
