package com.imooc.dao;

import com.imooc.entity.Users;
import com.imooc.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class UsersDAO {

    private SqlSession sqlSession;
    private List<Users> list;
    private Users user;

    private SqlSession getSession() {
        sqlSession = SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    public List<Users> findAll() {
        try {
            list = getSession().selectList("findUsers");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return list;
    }


    public Users findById(Integer id) {
        try {
            user = getSession().selectOne("findUsers", new Users(id));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return user;
    }

    public Users addUser(Users user) {
        try {
            //  返回值，影响的行数
            getSession().insert("addUser", user);
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return user;
    }

}
