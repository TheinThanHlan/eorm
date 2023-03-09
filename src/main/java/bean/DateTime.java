package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;


public class DateTime{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int year;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short month;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short day;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short hour;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short minute;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short second;


    public void setDateTime(
        int   year,
        short month,         
        short day,
        short hour,
        short minute,       
        short second){
        
        this.year   = year;
        this.month  = month;
        this.day    = day;   
        this.hour   = hour;       
        this.minute = minute;
        this.second = second;
            
        } 
 
    public boolean isEmpty(){
        if(
            this.year==0 &&
            this.month==0 &&
            this.day==0 && 
            this.hour==0 &&
            this.minute==0 &&
            this.second==0){

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