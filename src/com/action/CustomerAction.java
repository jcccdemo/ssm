package com.action;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.entity.Customer;
import com.entity.Page;
import com.service.CustomerService;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/customer")
public class CustomerAction {
    @Autowired
    private CustomerService customerService;
    //删除
    @RequestMapping("/delete")
    public String deldeteFun(Integer id){
        customerService.removeFun(id);
        //重定向
        return "redirect:viewAll";
        //表现层调用业务层中的方法
    }
    @RequestMapping("/viewAll")
    public String viewAllFun(Model model){
        List<Customer> customerList = customerService.viewAllFun();
        model.addAttribute("customerList",customerList);
        return "viewCustomer";//配置了视图解析器，访问viewCustomer.jsp
    }


    //向添加页面跳转，弹出添加页面
    @RequestMapping("/toAdd")
    public String toAdd(){

        return  "addCustomer";//访问addCustomer.jsp
    }
    //添加提交按钮请求处理
    @RequestMapping("/add")//保存按钮的处理方法
    public String addFun(Customer customer){
        //调用业务层中的方法将数据添加到表中
        customerService.addFun(customer);
        //重定向,添加完跳转到查询所有记录的方法
        //对应访问路径为@RequestMapping("/viewAll")
        return "redirect:viewAll";
    }

    //修改前显示要修改记录的信息
//    @RequestMapping("/preModify")
//    public String preModifyFun(Integer id,Model model){
//        //根据id获取修改的顾客对象
//        Customer ucustomer =customerService.viewByIdFun(id);
//        model.addAttribute("customer",ucustomer);
//        //配置了视图解析器，访问ModifyCustomer.jsp
//        return "modifyCustomer";
//    }
    @RequestMapping("/preModify")
    public ModelAndView preModifyFun(Integer id){

        Customer customer = customerService.viewByIdFun(id);//根据id获取修改的顾客对象

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("customer", customer);
        modelAndView.setViewName("modifyCustomer");//  modifyCustomer.jsp

        return modelAndView;//请求转发
    }
    //修改
    @RequestMapping("/modify")
    public String modifyFun(Customer customer){
        customerService.modifyFun(customer);
        //重定向，修改完更新记录。跳转到查询所有记录的方法
        //对应访问路径为@RequestMapping("/viewAll")
        return "redirect:viewAll";
    }
//    ====================================================================================================================
    //根据id查询客户信息
    //使用@RequestMapping注解映射方法的访问路径
    @RequestMapping("/findCustomerById")
    public String findCustomerById(Integer id,Model model){

        Customer customer = customerService.viewByIdFun(id);
        model.addAttribute("customer", customer);

        //返回客户信息展示页面
        return "viewCustomer";
    }
    //根据条件查询，customer封装查询条件
    @RequestMapping("/viewByCondition")
    public String viewByConditionFun(Model model,Customer customer){

        List<Customer> customerList =customerService.viewByConditionFun(customer);

        model.addAttribute("customerList", customerList);

        return "viewCustomer";//请求转发viewCustomer.jsp
    }
    //分页显示
    @RequestMapping("/viewByPage")
    public String viewByConditionPageFun(Model model, Page page){
//        page.setStart(0);
        List<Customer> customerList =customerService.viewByConditionPageFun(page);
        int total = customerService.total();
        page.setTotal(total);
        model.addAttribute("customerList", customerList);
        model.addAttribute("page", page);
        return "viewCustomer";
    }
}
