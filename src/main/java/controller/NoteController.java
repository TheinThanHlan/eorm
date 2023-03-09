package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.jdbc.core.JdbcTemplate;
import dao.*;
import com.google.gson.*;
import bean.*;

@Controller
public class NoteController{    
    @Autowired
    @Qualifier("ndao")
    NoteDao ndao;

    @PostMapping("/add_cat")
    @ResponseBody
    public String add_cat(HttpServletRequest request){
        Category category=new Category();                                   //for add cat
        User user=((User)(request.getSession().getAttribute("user")));      //get user from request session
        category.setName(request.getParameter("cat_name"));                 //set cat to add
        category.setDate(request.getParameter("cat_date"));
            
        Categories categories= ndao.add_cat(user,category);                 //use to get Categories
        return (new Gson().toJson(new Object[]{!categories.isEmpty(),categories}));
    }

    @PostMapping("/get_cat")
    @ResponseBody
    public String get_cat(HttpServletRequest request){
        User user=((User)(request.getSession().getAttribute("user")));          //get user from request session
        Categories categories= ndao.getCategories(user);                              //use to get Categories
        return (new Gson().toJson(new Object[]{!categories.isEmpty(),categories}));
    }


    @PostMapping("/add_page")
    @ResponseBody
    public String add_page(HttpServletRequest request){
        Category category=new Category();   
        Page page=new Page();                                //for add cat
        User user=((User)(request.getSession().getAttribute("user")));      //get user from request session
        category.setId(Integer.parseInt(request.getParameter("cat_id")));                 //set cat to add
        page.setDate(request.getParameter("page_date"));
        page.setName(request.getParameter("page_name"));
            
        Categories categories= ndao.add_page(user,category,page);                 //use to get Categories
        return (new Gson().toJson(new Object[]{!categories.isEmpty(),categories}));
        
    }


}