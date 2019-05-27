package com.imooc.action.servlet;

import com.imooc.dao.UsersDAO;
import com.imooc.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "UsersAddServlet", urlPatterns = {"/addusers"})
public class UsersAddServlet extends HttpServlet {
    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  获取到要添加的用户数据
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        //  根据用户数据创建一个用户对象
        Users user = new Users(username, password, nickname, Integer.parseInt(age), sex, phone, email, new Date(), new Date(), new Date(), 0);
        //  将用户对象添加到数据库
        user = usersDAO.addUser(user);
        //  查看刚新增的用户数据
        response.sendRedirect(request.getContextPath() + "/detail.jsp?id=" + user.getId());
    }
}
