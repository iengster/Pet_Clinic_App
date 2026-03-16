package com.petclinic;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("message", "Welcome To Pet_Clinic_App");
        request.setAttribute("description",
            "Your pet care management system is up and running!");
        request.getRequestDispatcher("/index.jsp")
               .forward(request, response);
    }

    public String getMessage() {
        return "Welcome To Pet_Clinic_App";
    }
}
