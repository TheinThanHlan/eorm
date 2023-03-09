package util;
public class Conv{
    public static short strToShort(String para,short def){
        Short tmp=def;
        if (!para.equals(null) || !para.equals("")){
            try{
                tmp=Short.parseShort(para);
            }
         
            catch(NumberFormatException e){}
            catch(NullPointerException e){}
        }
        return tmp;
    }    
}