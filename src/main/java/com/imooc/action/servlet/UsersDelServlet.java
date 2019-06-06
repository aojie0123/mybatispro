package com.imooc.action.servlet;

import com.imooc.dao.UsersDAO;
import com.imooc.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UsersDelServlet", urlPatterns = {"/deluser"})
public class UsersDelServlet extends HttpServlet {

    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  获取参数
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        //  执行删除或锁定
        if (type.equals("lock")) {
            //  锁定
            Users users = new Users();
            users.setId(Integer.parseInt(id));
            users.setUserStatus(1);

            usersDAO.updateUser(users);
        } else if (type.equals("delete")) {
            //  删除
            usersDAO.delUsers(Integer.parseInt(id));
        } else if (type.equals("unlock")) {
            //  解锁
            Users users = new Users();
            users.setId(Integer.parseInt(id));
            users.setUserStatus(0);

            usersDAO.updateUser(users);
        }
        //  跳转首页
        response.sendRedirect(request.getContextPath() + "/index");
    }
}
