package com.entity;
// Generated 2016-10-26 11:09:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Buyer generated by hbm2java
 */
public class Buyer  implements java.io.Serializable {


     private Integer bid;
     private String name;
     private String phone;
     private String address;
     private String username;
     private String password;
     private String idcardNum;
     private Set orders = new HashSet(0);
     private Set carts = new HashSet(0);

    public Buyer() {
    }

	
    public Buyer(String name, String phone, String username, String password, String idcardNum) {
        this.name = name;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.idcardNum = idcardNum;
    }
    public Buyer(String name, String phone, String address, String username, String password, String idcardNum, Set orders, Set carts) {
       this.name = name;
       this.phone = phone;
       this.address = address;
       this.username = username;
       this.password = password;
       this.idcardNum = idcardNum;
       this.orders = orders;
       this.carts = carts;
    }
   
    public Integer getBid() {
        return this.bid;
    }
    
    public void setBid(Integer bid) {
        this.bid = bid;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getIdcardNum() {
        return this.idcardNum;
    }
    
    public void setIdcardNum(String idcardNum) {
        this.idcardNum = idcardNum;
    }
    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }
    public Set getCarts() {
        return this.carts;
    }
    
    public void setCarts(Set carts) {
        this.carts = carts;
    }




}


