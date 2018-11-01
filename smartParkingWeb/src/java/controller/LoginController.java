/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author linhph
 */
@Controller

@RequestMapping(value="/login") 
public class LoginController {
    
    @RequestMapping(value="", method=RequestMethod.GET)
    public String loginPage( HttpServletRequest request,HttpServletResponse response, ModelMap mm) throws IOException {
        
        try {
            request.setCharacterEncoding("utf-8");
            String action = request.getParameter("action");
            
            int isLogin = 1;
            if(action.equals("signup")) {
                isLogin = 0;
            }
            mm.put("isLogin", isLogin);
            
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath()+"/index.html");
        }
        
        
        return "jsp/login" ;
    }
    
    
    @RequestMapping(value="/registerUser", method=RequestMethod.POST)
    @ResponseBody
    public String registerUser (HttpServletRequest request, HttpServletResponse response, ModelMap mm) throws IOException {
        String urlRedirict = request.getContextPath() + "/login?param=login";
        String message = "No thing!";
        try {
            request.setCharacterEncoding("UTF-8");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String fullname = request.getParameter("fullname");
            
            String phoneStr = request.getParameter("phone");
            
            int phone = Integer.parseInt(phoneStr);
            message = fullname;
            if(User.checkUserExist(username)){
                message = "Username exist!";
//                mm.put("message", message);
                System.out.println(username + "exist!");
            }
            System.out.println(fullname+ password);
            
        } catch (Exception e) {
            System.out.println("Exeption"+ e.getMessage());
            message = e.getMessage();
        }
//        response.sendRedirect(urlRedirict);
        return message ;
    }
    
    
}