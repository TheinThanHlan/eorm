package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.jdbc.core.JdbcTemplate;
import dao.*;
import com.google.gson.*;
import java.util.*;
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
        System.out.println("Pae Added \n __________________________________________");
        return (new Gson().toJson(new Object[]{!categories.isEmpty(),categories}));
        
    }

    @PostMapping("/get_note")
    @ResponseBody
    public String get_note(HttpServletRequest request){
        Category category=new Category();   
        Page page=new Page();                                //for add cat
        User user=((User)(request.getSession().getAttribute("user")));      //get user from request session
        category.setId(Integer.parseInt(request.getParameter("cat_id")));                 //set cat to add
        page.setId(Integer.parseInt(request.getParameter("pg_id")));                 //set cat to add
        page.setDate(request.getParameter("cdate"));
        
        page = ndao.get_notes(page);
        return (new Gson().toJson(new Object[]{!page.isEmpty(),page}));
        
    }

    @PostMapping("/edit_note")
    @ResponseBody
    public String add_note(HttpServletRequest request){
        Page page=new Page();                                //for add cat
        
        page.setId(Integer.parseInt(request.getParameter("id")));
        Note[] notes=new Gson().fromJson(request.getParameter("notes"),Note[].class);
        String x="no error";
        for(int a=0;a<notes.length;a++){
            x=ndao.add_note(page,notes[a]);
        }
        page=ndao.get_notes(page);
        
        return (new Gson().toJson(new Object[]{!page.isEmpty(),page,x}));
        
    }

    @PostMapping("/delete_note")
        @ResponseBody
        public String delete_note(HttpServletRequest request){
            Page page=new Page();                                //for add cat
            
            page.setId(Integer.parseInt(request.getParameter("page_id")));
            Note note=new Note();
            note.setId(Integer.parseInt(request.getParameter("note_id")));
            ndao.delete_note(note);
            page=ndao.get_notes(page);
            
            return (new Gson().toJson(new Object[]{!page.isEmpty(),page}));
            
        }



    @RequestMapping("test")
    public String test(){
        return "jsp/uploadTest.jsp";
    }

    @PostMapping ("/test1")
    @ResponseBody
    public String test( HttpServletRequest request){
          return util.RecieveImage.rec(request)+" ";

    }
    






}