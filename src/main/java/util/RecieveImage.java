package util;
import javax.servlet.http.*;
import org.apache.commons.fileupload.servlet.*;
import java.io.*;
import org.apache.commons.fileupload.disk.*;
import java.util.*;
import org.apache.commons.fileupload.*;
import java.nio.file.*;

public class RecieveImage{
    public static boolean rec(HttpServletRequest request){
        boolean isMultipart=ServletFileUpload.isMultipartContent(request);
        DiskFileItemFactory factory=new DiskFileItemFactory();
        File repository = new File("/home/tth/Documents/tmp_deleteable");
        factory.setRepository(repository);
        ServletFileUpload upload = new ServletFileUpload(factory);
        try{
            List <FileItem> items=upload.parseRequest(request);
            Iterator <FileItem> iter=items.iterator();
            while(iter.hasNext()){
                FileItem fi=iter.next();
                byte[] m=fi.get();  
                Files.write(Paths.get("/home/tth/a.pdf"),m) ;        
            }
        }catch(Exception e){

        }
        return isMultipart;
    }
}