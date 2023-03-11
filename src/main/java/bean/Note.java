package bean;
import com.google.gson.*;
import com.google.gson.annotations.*;
import lombok.*;


public class Note{
    @Expose(serialize=true,deserialize=true)  @Getter @Setter int     id        =-1    ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter String  name             ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter String  body           ;
 
    @Expose(serialize=true,deserialize=true)  @Getter @Setter Image   images   []        ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter String   date;

    public boolean isEmpty(){
        if (
            this.name  == null &&
            this.body == null 
  
        ){
            return true;
        }
        else{
            return false;   
        }
    } 
    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }
}