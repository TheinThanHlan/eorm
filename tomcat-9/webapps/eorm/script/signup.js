$(document).on("click","#signup-button",function(){
    let userInfo  =  {email:    $("#email").val()   , 
                      gender:   $("input[name='gender']:checked").val()  , 
                      age:      $("#age").val()     , 
                      password: $("#password").val()}
    $.ajax({
      url:"signup",
      method:"Post",
      data:userInfo,
      success:function(result){
        let tmpResult=JSON.parse(result)
        if (tmpResult[0]=='true'){
          alert("success")
        }else{
          alert(tmpResult[1])
        }
      }
    }) 


  
})
