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
        Category category=new Category();
        User user=((User)(request.getSession().getAttribute("user")));
        category.setName(request.getParameter("cat_name"));
        category.setDate(request.getParameter("cat_date"));
        Categories categories= ndao.add_cat(user,category);
        return (new Gson().toJson(new Object[]{!categories.isEmpty(),categories}));
            
    }

}