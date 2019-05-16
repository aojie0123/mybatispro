package com.imooc.action.servlet;

import com.imooc.dao.UsersDAO;
import com.imooc.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsersFindServlet", urlPatterns = {"/index"})
public class UsersFindServlet extends HttpServlet {

    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Users> list = usersDAO.findAll();

        request.setAttribute("usersList", list);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
