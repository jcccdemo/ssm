package com.service;

import com.entity.Customer;
import com.entity.Page;
import com.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    /*
     * 删除
     * @param id 主键id
     * @return true：成功 false：失败
     * */
    public boolean removeFun(Integer id) {
        try {
            customerMapper.deleteFun(id);//业务层调用持久层Mapper接口中的方法
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
    public boolean addFun(Customer customer) {
        try {
            customerMapper.insertFun(customer);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /*
     * 根据主键查询
     * 修改功能用，修改前获取记录信息显示
     * @param id 主键
     * @return 查询到的记录
     * */
    public Customer viewByIdFun(Integer id) {
        return customerMapper.selectByIdFun(id);
        //调用mapper接口中的方法
    }


    /*
    * 修改
    * @param customer 修改的记录
    * @return true：成功 false：失败
    * */
    public boolean modifyFun(Customer customer) {
        try {
            customerMapper.updateFun(customer);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
//        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//      条件查询
//      @param customer 封装的查询条件
//      @return 满足条件的记录列表

    public List<Customer> viewByConditionFun(Customer customer){
        return customerMapper.selectByConditionFun(customer);

    }

    //分页显示,查询指定页数据
    public List<Customer> viewByConditionPageFun(Page page) {
        return customerMapper.selectByConditionPageFun(page);
    }

    //分页查询 ,查询数据库表里面的总数据量
    public int total() {
        return customerMapper.total();
    }
    public List<Customer> viewAllFun(){
        return customerMapper.selectAllFun();
    }
}


