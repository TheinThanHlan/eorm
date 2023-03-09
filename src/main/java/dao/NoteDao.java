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
    public Categories getCategories(User user){
       return template.queryForObject(String.format(get_categories,user.getId()),new RowMapper<Categories>(){
            public Categories mapRow(ResultSet rs,int rownumber)throws SQLException{
                LinkedList <Category>x=new LinkedList<Category>();
                do{
                    Category category=new Category();

                    category.setId(rs.getInt(1));
                    category.setName(rs.getString(2));
                    category.setDate(rs.getString(3));
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

}