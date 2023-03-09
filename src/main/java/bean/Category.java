package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;
import java.util.*;
public class Category{
    
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int    id      =0  ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String name        ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String date        ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private LinkedList <Page> pages;






    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }
    
    public boolean isEmpty(){   
        if((this.id     ==0&&
            this.name   ==null && 
            this.date   ==null && 
            this.pages  ==null)){
                
            return true;
        }
        else{
            return false;   
        }        
    }
}
