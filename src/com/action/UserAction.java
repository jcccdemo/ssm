package com.action;

import javax.servlet.http.HttpSession;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//使用@Controller注解将控制层的类标识为Spring中的Bean
@Controller

public class UserAction {

    //依赖注入，使用@Autowired注解将UserService对象注入到本类中
    @Autowired
    private UserService userService;

    //用户登录
    @RequestMapping("/login")
    public String login(String uname, String upwd, Model model, HttpSession session){
        User user = userService.findUser(uname, upwd);//通过用户名和密码查询用户,调用业务层方法
        if(user != null){
            session.setAttribute("USER_SESSION", user);//将用户对象添加到Session
            return "index";//登录成功，进入系统主界面测试页面
        }else{
            model.addAttribute("msg", "账号或密码错误，请重新输入！");
            return "login";//login.jsp
        }
    }

    //退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();//清楚session
        return "login";
    }

    @RequestMapping("/toAdd2")//跳转到注册功能页面
    public String toAdd2(){

        return  "addUser";//访问addUser.jsp
    }
    //添加提交按钮请求处理
    @RequestMapping("/add2")//保存按钮的处理方法
    public String addFun2(User user){
        //调用业务层中的方法将数据添加到表中
        userService.addFun2(user);
        //重定向,添加完跳转到查询所有记录的方法
        //对应访问路径为@RequestMapping("/viewAll")
        return "redirect:login.jsp";
    }
}