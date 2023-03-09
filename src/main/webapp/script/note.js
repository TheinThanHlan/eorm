var categories={};

$(document).ready(function(){
    $.ajax({
      url:"get_cat",
      method:"Post",
      success:function(result){
        let tmpResult=JSON.parse(result)
        categories=tmpResult[1];
        if(tmpResult[0]==true){
            refreshCat(categories);
        }else{

        }
      }
    }) 
})







function refreshCat(catObj){
  $("#note_categories").html("");
  $("#cat_select").html("");
  for(let a=0;a<catObj.categories.length;a++){
        let tmp='<div class="note_categoary">'                                                                                                                                                                                                                                        
                + '<div class="button-general note_categoary_button note_categoary_button_1" id="category-button-"'+a+'>'                                                                                                                           
                + '<div class="note_categoary_icon_1">'                                                                                                                                                                                             
                + '<svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">'                                                                                                                                                                                                                         
                + '<path d="M20 8h-12c-2.21 0-3.98 1.79-3.98 4l-.02 24c0 2.21 1.79 4 4 4h32c2.21 0 4-1.79 4-4v-20c0-2.21-1.79-4-4-4h-16l-4-4z" />'                                                                                                                          
                + '<path d="M0 0h48v48h-48z" fill="none" />'                                                                                                                                                                                                                
                + '</svg>'                                                                                                                                                                                                                                                                      
                + '</div>'
                + '<div class="note_categoary_title note_categoary_title_1">'                                                                                                                                   
                + '<div>'
                +  catObj.categories[a].name                                                                                                             
                + '</div>'                                                                                                                                                                                                                      
                + '</div>'
                + '</div>'
                + '<div class="note_categoary_fold" >'                                                                                                                          
                +                                                                                                                               
                +  '</div>'
                +  '</div>'

        let tmp2='<option value="'+ catObj.categories[a].id + '">'
                + catObj.categories[a].name
                +'</option>'
        $("#note_categories").append(tmp);
        $("#cat_select").append(tmp2)

    }






    $("#note_categories").text()
}

$(document).on("click","#ctpu_add_cat_button",function(){
    let tmp={cat_name:$("#cat_name").val(),
            cat_date:   new Date().getFullYear()+"-"+new Date().getMonth()+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds()
            }
    $.ajax({
      url:"add_cat",
      method:"Post",
      data:tmp,
      success:function(result){
        let tmpResult=JSON.parse(result)
        if(tmpResult[0]==true){
            categories=tmpResult[1];
            refreshCat(categories);
            alert("success")
        }else{
            alert("already created");
        }
      }
    }) 



})
$(document).on("click","#ctpu_add_page_button",function(){
    let tmp={
        cat_id:categories.categories[$("#cat_select option:selected").val()].id,
        page_name:$("#page_name").val(),
        page_date:   new Date().getFullYear()+"-"+new Date().getMonth()+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds()
    }
    $.ajax({
      url:"add_page",
      method:"Post",
      data:tmp,
      success:function(result){  
        let tmpResult=JSON.parse(result)
        if(tmpResult[0]==true){
            categories=tmpResult[1];
            refreshCat(categories);
            alert("success")
        }else{
            alert("Already created")
        }
      }
    }) 

        
    
})