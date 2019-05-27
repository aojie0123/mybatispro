package com.imooc.action.servlet;

import com.imooc.dao.UsersDAO;
import com.imooc.entity.Users;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UsersFindByIdServlet", urlPatterns = {"/detail"})
public class UsersFindByIdServlet extends HttpServlet {

    /**
     * 创建对应的日志记录对象
     * 通过不同的级别进行日志的记录【DEBUG\WARN\INFO】
     */
    private Logger log = Logger.getLogger(UsersFindByIdServlet.class);

    private UsersDAO usersDAO = new UsersDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        log.info("获取到查询参数ID-->" + id);

        Users user = usersDAO.findById(Integer.parseInt(id));

        log.info("查询数完成，查询到的数据：" + user);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }
}
