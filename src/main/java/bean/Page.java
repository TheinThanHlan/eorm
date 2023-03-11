package bean;
import java.util.*;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;
import java.util.*;
public class Page{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int        id    =-1              ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String     name                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String  date                ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String   reviewed_times[]    ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private LinkedList<Note>  notes    ;
    
    
    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }
    
    public boolean isEmpty(){   
        if((this.name==null &&
            this.date==null  &&
            this.id==-1
            
            )){
            return true;
        }
        else{
            return false;   
        }        
    }
}