package com.mapper;

import java.util.List;
import com.entity.Customer;
import com.entity.Page;


public interface CustomerMapper {
    //查询所有记录
    public List<Customer> selectAllFun();
    //根据主键删除
    public void deleteFun(Integer id);
    //添加记录（封装到对象）
    public void insertFun(Customer customer);

    //修改记录(根据主键查询，修改前先获取记录信息显示)
    public Customer selectByIdFun(Integer id);
    //修改记录(封装到对象)
    public void updateFun(Customer customer);

    //      条件查询
//      @param customer 封装的查询条件
//      @return 满足条件的记录
    public List<Customer> selectByConditionFun(Customer customer);


    //分页显示,查询指定页数据
    //传入Page类的变量参数，包含了start,count
    public List<Customer> selectByConditionPageFun(Page page);
    //分页查询 ,查询数据库表里面的总数据量
    public int total();


}
