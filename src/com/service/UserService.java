package com.service;

import com.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.mapper.UserMapper;

//使用@Service注解将业务层的类标识为Spring中的Bean
@Service
public class UserService {

    //依赖注入，使用@Autowired注解将UserMapper对象注入到本类中
    //UserMapper对象是通过配置Mapper扫描器扫描UserMapper接口生成的对象
    @Autowired
    private UserMapper userMapper;
    //通过用户名和密码查询用户，返回查询到的用户对象
    public User findUser(String uname,String upwd){
        //将要查找的用户名和密码封装到用户对象中
        User loginuser = new User();
        loginuser.setUname(uname);
        loginuser.setUpwd(upwd);
        //调用持久层Mapper接口中的方法
        User user = userMapper.findUser(loginuser);
        return user;
    }
//
//      修改密码
//      @param uid 修改的用户id
//      @return true:成功，false:失败
//
    public boolean modifyPwd(Integer uid) {
        try {
            userMapper.updatePwd(uid);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    /*
        * 添加
            @param customer 要添加的记录
            @return ture：添加成功 false：失败
         */
    public boolean addFun2(User user) {
        try {
            userMapper.insertFun2(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
