package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;
import java.util.*;
public class Page{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int        id                  ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String     name                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String  date                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String   reviewed_times[]    ;
 
    
    
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