package com.mapper;

import com.entity.Customer;
import com.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    //查找用户：根据用户名和密码查询用户信息，将用户信息封装在对象中
    public User findUser(User user);

    //查找用户：根据用户名和密码查询用户信息
    //传递多个参数，用@Param注解来给参数命名(登录)
    public User findUser2(@Param("name") String username, @Param("pwd") String userpassword);
    //注册用户（封装到对象）
    public void insertFun2(User user);

    //修改密码
    public void updatePwd(Integer uid);
}
