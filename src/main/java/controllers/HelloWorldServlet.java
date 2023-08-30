package controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<<< HEAD:src/main/java/controllers/HelloWorldServlet.java
@WebServlet(name = "controllers.HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
========
@WebServlet("/howdy")
public class HowdyServlet extends HttpServlet {
    @Override
>>>>>>>> main:src/main/java/HowdyServlet.java
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().println("<h1><a href='/partner'>Howdy</a></h1>");
    }
}
