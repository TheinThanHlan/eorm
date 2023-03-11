package dao;
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.*;
import org.springframework.jdbc.core.*;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import java.sql.*;
import org.springframework.context.annotation.PropertySource;
import bean.*;
import java.util.*;

@Component
@PropertySource("classpath:NoteDao.properties")
public class NoteDao{
    JdbcTemplate template;

    @Autowired
    @Qualifier("dmsBean")   
    public void setJdbcTemplate(DriverManagerDataSource dms){
        this.template=new JdbcTemplate(dms);
    }


   @Value("${get_categories}")
    String get_categories;
   @Value("${get_page}")
   String get_page;
    public Categories getCategories(User user){
       return template.queryForObject(String.format(get_categories,user.getId()),new RowMapper<Categories>(){
            public Categories mapRow(ResultSet rs,int rownumber)throws SQLException{
                LinkedList <Category>x=new LinkedList<Category>();
                do{
                    Category category=new Category();
                    category.setId(rs.getInt(1));
                    category.setName(rs.getString(2));
                    category.setDate(rs.getString(3));
                    try{
                    LinkedList<Page> pages=template.queryForObject(String.format(get_page,category.getId()),new RowMapper<LinkedList<Page>>(){
                        public LinkedList<Page> mapRow(ResultSet rs,int rownuumber1) throws SQLException{
                        LinkedList <Page> tmpPages=new LinkedList<Page>();
                
                            do{
                                Page p=new Page();
                                p.setId(rs.getInt(1));
                                p.setName(rs.getString(2));
                                p.setDate(rs.getString(3));
                                tmpPages.add(p);
                            }while(rs.next());
                            
                            return tmpPages;
                        }
                    });

                    category.setPages(pages);
                    }catch(Exception e){
                        category.setPages(new LinkedList<Page>());
                    }

                    x.add(category);
                }while(rs.next());
    
                Categories cats=new Categories();
                cats.setCategories(x);
                return cats;
            }
       });
    }


    @Value("${add_new_category}")
    String add_new_category;
    public Categories add_cat(User user,Category category){
        try{
            if(template.update(String.format(add_new_category,user.getId(),category.getName(),category.getDate()))!=0){
                return getCategories(user);   
            }
            return new Categories();
        }
        catch(Exception e){
            return new Categories();
        }
    }

    @Value("${add_new_page}")
    String add_new_page;
    public Categories add_page(User user,Category category,Page page){
    try{
        if(template.update(String.format(add_new_page,category.getId(),page.getName(),page.getDate()))!=0){
            return getCategories(user);
        }
        return new Categories();
    }catch(Exception e){
        return new Categories();
    }
    }

    @Value("${get_notes}")
    String get_note;
    public Page get_notes(Page page){
        LinkedList <Note>notes=new LinkedList<Note>();
        try{
            return template.queryForObject(String.format(get_note,page.getId()),new RowMapper<Page>(){
                public Page mapRow(ResultSet rs,int rownumber)throws SQLException{
                    do{
                        Note note=new Note();
                        note.setId(rs.getInt(1));
                        note.setName(rs.getString(2));
                        note.setBody(rs.getString(3));
                        notes.add(note);
                    }while(rs.next());   
                
                page.setNotes(notes);
                return page;
                }

            });
            }
        catch(Exception e){
            return page;

        }
    }



    @Value("${add_new_note}")
    String add_new_note;
    @Value("${update_note}")
    String update_note;
    public String add_note(Page page,Note note){
    try{
        if(note.getId()==-1){
            if(template.update(String.format(add_new_note,page.getId(),note.getName(),note.getBody()))!=0){
            
            }
        }else{
            if(template.update(String.format(update_note,note.getName(),note.getBody(),note.getId(),page.getId()))!=1){
            
            }
        }

    }catch(Exception e){
        return e.toString();
    }
    return " ";
    }

    @Value("${delete_note}")
    String delete_note_sql;
    public void delete_note(Note note){
    try{
        if(template.update(String.format(delete_note_sql,note.getId()))!=0){
        }
    }catch(Exception e){
    }
    }



}