var lolo={};
function refreshCat(catObj){

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
        lolo=tmpResult;
        
    
      }
    }) 



})
$(document).on("click","#ctpu_add_page_button",function(){
    data={
        "cat_name":$("#cat_select").val(),
        "page_name":$("#page_name").val()
    }

    
})