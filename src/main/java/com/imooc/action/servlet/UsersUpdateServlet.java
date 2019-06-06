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

@WebServlet(name = "UsersUpdateServlet", urlPatterns = {"/updateusers"})
public class UsersUpdateServlet extends HttpServlet {

    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  获取用户要更新的数据
        String id = request.getParameter("id");
        String nickname = request.getParameter("nickname");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String remark = request.getParameter("remark");
        //  创建用户对象
        Users users = new Users(Integer.parseInt(id), nickname, Integer.parseInt(age), sex, phone, email, new Date(), remark);
        //  提交更新
        usersDAO.updateUser(users);
        //  查看更新后的用户数据
        response.sendRedirect(request.getContextPath() + "/detail?id=" + users.getId());
    }
}
