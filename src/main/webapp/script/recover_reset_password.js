
$(document).on("click","#change_button",function(){
    let userInfo  =  {  
                      password: $("#password1").val(),
                      }


    $.ajax({
      url:"changePassword",
      method:"Post",
      data:userInfo,
      success:function(result){
        let tmpResult=JSON.parse(result)
        if (tmpResult[0]=='false'){
          alert("You are Failure")
        }else{
            window.location.replace("http://localhost:8080/eorm/changePasswordStatus");
        }
      }
    }) 
})