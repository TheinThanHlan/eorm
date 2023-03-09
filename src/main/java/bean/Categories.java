package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;
import java.util.*;

public class Categories{
  @Setter @Getter  @Expose(serialize=true,deserialize=true)LinkedList <Category> categories;
    public boolean isEmpty(){        
        if(categories==null){
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