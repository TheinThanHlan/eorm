$(document).on("click","#add_page_form",function(){
    $(".add_cat").css("display","none");
    $(".add_page").css("display","block");
    $("#ctpu").css("display","block")
})
$(document).on("click","#add_cat_form",function(){
    $(".add_cat").css("display","block");
    $(".add_page").css("display","none");
    $("#ctpu").css("display","block")
})
$(document).on("click","#ctpu_cancel_button",function(){
    $("#ctpu").css("display","none");
})



