package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;

public class Page{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int        id                  ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String     name                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private DateTime   date                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private DateTime   reviewed_times[]    ;

    
    public void setPage(
        int        id                , 
        String     name              , 
        DateTime   date              , 
        DateTime   reviewed_times[]   
    ){
       this. id               =  id               ;          
       this. name             =  name             ;
       this. date             =  date             ;
       this. reviewed_times =  reviewed_times     ;
    }
    
    
    
    
    
    
    
    
    
    
    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }
    
    public boolean isEmpty(){   
        if((this.name==null && 
            this.date==null )){
            return true;
        }
        else{
            return false;   
        }        
    }
}