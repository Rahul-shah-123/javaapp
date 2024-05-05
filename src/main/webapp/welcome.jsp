<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // In a real application, you would validate username and password against a database
    // For this example, I'll just hardcode a username and password
    Map<String, String> credentials = new HashMap<>();
    credentials.put("user1", "password1");

    if (credentials.containsKey(username) && credentials.get(username).equals(password)) {
        session.setAttribute("username", username);
        response.sendRedirect("welcome.jsp");
    } else {
        out.println("Invalid username or password. Please try again.");
    }
%>
