$(document).on("click","#send",function(){
    let userEmail=$("#email").val();

    $.ajax({
      url:"checkEmail",
      method:"Post",
      data:userEmail,
      success:function(result){
        let tmpResult=JSON.parse(result)
        if(tmpResult[0]=="true"){
            window.location.replace("http://localhost:8080/eorm/changePassword");
        }
        else{
            alert("You are failure ");
        }
      }
    }) 
})