package controller;
import javax.servlet.http.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


import com.google.gson.*;
import dao.*;
import bean.*;

import util.*;

@Controller
public class AuthController{
    
    @Autowired
    @Qualifier("adao")
    AuthDao adao;    


    @RequestMapping("/login")
    public String f1(){
        return "jsp/login.jsp";
    }

    @RequestMapping("signupMap")
    public String f2(){
        return "jsp/signup.jsp";
    }
    @RequestMapping("fpcheckEmail")
    public String f3(){
        return "jsp/recover_ask_email.jsp";
    }

    @RequestMapping("changePassword")
    public String f4(){
        return "jsp/recover_reset_password.jsp";
    }

    @RequestMapping("changePasswordStatus")
    public String f5(){
        return "jsp/success_change_password.jsp";
    }
    @GetMapping("/")
    public String f6(HttpServletRequest request){
       HttpSession session=request.getSession();
        User user=((User)session.getAttribute("user")); 
        if(user != null && user.isEmpty()==false){
            return "jsp/note_taking_page.jsp";
        }else{
            return "redirect:login";
        }
       
    }
    
    

    @PostMapping("signup")
    @ResponseBody public String signup(HttpServletRequest request){  
        try{
            User user=new User();
            System.out.println("HaHa");

            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            user.setAge(Conv.strToShort(request.getParameter("age"),(short)99999));
            user.setGender(Conv.strToShort(request.getParameter("gender"),(short)99999));

            adao.addUser(user);
            return (new Gson().toJson(new String[]{"true"}));
        }catch (org.springframework.dao.DuplicateKeyException e){
            return (new Gson().toJson(new String[]{"false","This email have an account"}));
        }
    }

    @PostMapping("login")
    @ResponseBody public String login(HttpServletRequest request,HttpServletResponse response){  
        try{
            User user=new User();
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            
            user=adao.get_user_from_email_and_password(user);
            if(user.isEmpty()==false){
                (request.getSession()).setAttribute("user",user);
                return (new Gson().toJson(new String[]{"true"}));
            }   
            else{
                return (new Gson().toJson(new String[]{"false","wrong email or password"}));
            }         



        }catch(Exception e){   
            return (new Gson().toJson(new String[]{"false","wrong email or password"}));
        }
    }

    @PostMapping("checkEmail")
    @ResponseBody
    public String checkEmail(HttpServletRequest request){
        boolean is_exist=true;
        if(is_exist==true){
            return (new Gson().toJson(new String[]{"true"}));
        }else{
            return (new Gson().toJson(new String[]{"false","Something Went Wrong"}));
        }
    }

    @PostMapping("changePassword")
    @ResponseBody
    public String changePassword(){
        boolean is_success=true;
        if(is_success==true){
            return (new Gson().toJson(new String[]{"true"}));
        }else{
            return (new Gson().toJson(new String[]{"true","Something Went Wrong"}));
        }   
    }







}