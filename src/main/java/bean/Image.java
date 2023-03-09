package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;

public class Image{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int id=-1;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private byte[] image;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String title;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short position   =-1;
    public void setImage(      
        int id,  
        String title ,       
        byte[] image,
        short position
    ){
        this.id=id;
        this.title  =   title;
        this.image  =   image;
        this.position=  position;
    }

    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }
    public boolean isEmpty(){
        if( this.id==-1 &&
            this.image==null &&
            this.title==null &&
            this.position==-1){
            return true;
        }        
        else{
            return false;
        }
}
 
 
}