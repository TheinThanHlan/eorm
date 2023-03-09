package dao;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import java.sql.*;
import util.*;
//****************************************** */
import bean.*;


@PropertySource("classpath:AuthController.properties")
@Component
public class AuthDao{
    
    JdbcTemplate template;

    @Autowired
    @Qualifier("dmsBean")
    public void setJdbcTemplate(DriverManagerDataSource dms){
        template=new JdbcTemplate(dms);
    }

    //******************sql properties********************************* */
    @Value("${user.add}")
    String add_user;
    public int addUser(User user){
        return template.update(String.format(add_user,user.getEmail(),user.getPassword(),user.getGender(),user.getAge()));
    }

    @Value("${user.get_user_from_email_and_password}")
    String check_user;
    public User get_user_from_email_and_password(User user){
        return ((User)template.queryForObject(String.format(check_user,user.getEmail().toLowerCase(),user.getPassword().toLowerCase()),new RowMapper<User>(){
            public User mapRow(ResultSet rs,int rownumber) throws SQLException{
                User tmp=new User();
                tmp.setId(rs.getInt(1));
                tmp.setEmail(rs.getString(2));
                tmp.setPassword(rs.getString(3));
                tmp.setGender(rs.getShort(4));
                tmp.setAge(rs.getShort(5));
                return tmp;
            }

        }));
    }
    
}