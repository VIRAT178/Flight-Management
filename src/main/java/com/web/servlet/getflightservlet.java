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

@WebServlet("/getflightservlet")
public class getflightservlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int fid = Integer.parseInt(request.getParameter("fid"));
      DBservice db = new DBservice();
      Flight f = db.getFlight(fid);
      ArrayList<Flight> lst = db.getall();
      request.setAttribute("flight", f);
      request.setAttribute("allflights", lst);
      RequestDispatcher rd = request.getRequestDispatcher("/search.jsp");
      rd.forward(request, response);
	}

}
