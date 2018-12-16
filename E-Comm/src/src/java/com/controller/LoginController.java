/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.common.Parameter;
import com.entity.Buyer;
import com.entity.Manager;
import com.entity.Saler;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Thomas
 */
@Controller
@RequestMapping("/login")
public class LoginController  {
    
    @RequestMapping("/buyerLogin.do")
    public void buyerLogin(@RequestParam("username")String username,
            @RequestParam("password")String password,
            @RequestParam("lastpage")String lastPage,
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        
        Buyer buyer = new Buyer();
        //dao
        if(true){
            request.setAttribute("buyer", buyer);
            request.setAttribute("code", Parameter.CODE_SUCCESS);
            request.getRequestDispatcher(Parameter.URL_PREFIX+lastPage).forward(request, response);
        }else{
            request.setAttribute("error", "用户名或密码错误，请重新登录");
            request.setAttribute("code", Parameter.CODE_FAIL);
            request.getRequestDispatcher(lastPage).forward(request, response);
        }
    }
    
    @RequestMapping("/salerLogin.do")
    public void salerLogin(@RequestParam("username")String username,
            @RequestParam("password")String password,
            @RequestParam("lastpage")String lastPage,
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        
        Saler saler = new Saler();
        //dao
        if(true){
            request.setAttribute("saler", saler);
            request.setAttribute("code", Parameter.CODE_SUCCESS);
            request.getRequestDispatcher(Parameter.URL_PREFIX+lastPage).forward(request, response);
        }else{
            request.setAttribute("error", "用户名或密码错误，请重新登录");
            request.setAttribute("code", Parameter.CODE_FAIL);
            request.getRequestDispatcher(lastPage).forward(request, response);
        }
    }
    
    @RequestMapping("/managerLogin.do")
    public void managerLogin(@RequestParam("username")String username,
            @RequestParam("password")String password,
            @RequestParam("lastpage")String lastPage,
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        
        Manager manager = new Manager();
        //dao
        if(true){
            request.setAttribute("manager", manager);
            request.setAttribute("code", Parameter.CODE_SUCCESS);
            request.getRequestDispatcher(Parameter.URL_PREFIX+lastPage).forward(request, response);
        }else{
            request.setAttribute("error", "用户名或密码错误，请重新登录");
            request.setAttribute("code", Parameter.CODE_FAIL);
            request.getRequestDispatcher(lastPage).forward(request, response);
        }
        
    }
}
