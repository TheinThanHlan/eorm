package bean;
import lombok.*;
import com.google.gson.*;
import com.google.gson.annotations.*;


public class User{
    @Expose(serialize=true,deserialize=true) @Getter @Setter private int   id;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String   email;
    @Expose(serialize=false,deserialize=true)@Getter @Setter private String   password;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short   age     ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private short   gender  ;
    @Expose(serialize=true,deserialize=true) @Getter @Setter private String   signupDate;

    public String toJson(){
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(this);
    }




    public boolean isEmpty(){   
        if((this.email      ==null && 
            this.password   ==null && 
            this.signupDate ==null)){
                
            return true;
        }
        else{
            return false;   
        }        
    }

    public String getGenderName(){
        
        switch(this.gender){
            case 0:{return "Female";}
            case 1:{return "Male";}
            default:{return "Undefined";}
        }
    }

    //public void setUser(int id,String email,String password,short age,short gender,String signupDate){
        
} 