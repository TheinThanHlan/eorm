package bean;
import com.google.gson.*;
import com.google.gson.annotations.*;
import lombok.*;


public class Note{
    @Expose(serialize=true,deserialize=true)  @Getter @Setter int     id        =-1    ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter String  title             ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter String  content           ;
    @Expose(serialize=true,deserialize=true)  @Getter @Setter Image   images   []        ;
    public void setNote(
        int id,
        String  title       ,    
        String  content     ,     
        Image   images   []   ){
            this.id=id;
            this.title=title;
            this.content=content;
            this.images=images;
        }



    public boolean isEmpty(){
        if (
            this.id==-1&&
            this.title   == null &&
            this.content == null &&
            this.images   == null
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