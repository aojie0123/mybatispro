package com.imooc.action.servlet;

import com.imooc.dao.UsersDAO;
import com.imooc.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UsersFindByIdServlet", urlPatterns = {"/detail"})
public class UsersFindByIdServlet extends HttpServlet {

    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        Users user = usersDAO.findById(Integer.parseInt(id));
        request.setAttribute("user", user);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }
}
