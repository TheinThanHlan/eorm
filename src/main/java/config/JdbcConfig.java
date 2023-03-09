package config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;



@Configuration
@ComponentScan("dao")
public class JdbcConfig{
    private final String url= "jdbc:mysql://localhost:3306/rem";
	private final String user= "tth";
	private final String driver= "com.mysql.jdbc.Driver";
	private final String password= "1212";


    @Bean
    @Qualifier("dmsBean")
    public DriverManagerDataSource dataSource(){
        DriverManagerDataSource dms=new DriverManagerDataSource();
        dms.setUrl(url);
        dms.setUsername(user);
        dms.setDriverClassName(driver);
        dms.setPassword(password);
        return dms;
    }

    @Bean
    @Qualifier("adao")
    public dao.AuthDao adao(){
        return new dao.AuthDao();
    }

    @Bean
    @Qualifier("ndao")
    public dao.NoteDao ndao(){
        return new dao.NoteDao();
    }


}