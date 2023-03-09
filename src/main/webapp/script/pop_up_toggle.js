var pop_up_toggle_state=1
$(document).on("click","#menu",function(){
    $("#pop_up_toggle").slideToggle();
    pop_up_toggle_state= 1 - pop_up_toggle_state 
    $("#pop_up_toggle").css("display", "inline-block");
})
$(document).on("mouseleave","#menu_button",function(){
    $("#pop_up_toggle").slideUp();
    pop_up_toggle_state= 1 - pop_up_toggle_state 

    $(".ACLG").css("display","grid");    
    $(".u_info").css("display","none");
  
    

})


$(document).on("click","#account",function(){ 
    $(".ACLG").css("display","none"); 
    $(".u_info").css("display","grid");
})


$(document).on("click","#account",function(){
    $(".ACLG").css("display","none");    
    $(".u_info").css("display","grid");
})

$(document).on("click","#return",function(){
 
    $(".ACLG").css("display","grid");
    
    $(".u_info").css("display","none");
})
