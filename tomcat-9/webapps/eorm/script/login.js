$(document).on("click","#login_button",function(){
    let userInfo  =  {email:    $("#email").val()   , 
                      password: $("#password").val(),
                      remember: $("#reme-check")[0].checked
                    }


    $.ajax({
      url:"login",
      method:"Post",
      data:userInfo,
      success:function(result){
        let tmpResult=JSON.parse(result)
        if (tmpResult[0] =='false'){
          alert(tmpResult[1]);
        }else{
          window.location.href="/eorm/" 
        }
      }
    }) 
})