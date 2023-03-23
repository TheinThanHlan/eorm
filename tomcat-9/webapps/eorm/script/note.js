var categories={};
var current_page={};
var current_page_id={};



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
    $(".title_div").css("visibility","hidden")
  })


function refreshCat(catObj){
  
  $("#note_categories").html("");
  $("#cat_select").html("");
  for(let a=0;a<catObj.categories.length;a++){
          let tmp11='    <div class="nt_cat">'
                    +'        <div class="button-general nt_button">'
                    +'            <div>'
                    + catObj.categories[a].name
                    +'            </div>'
                    +'        </div>'
                    +'        <div class="nt_fold" hidden="true">'

     
    let tmp12='';
        for(let b=0;b<catObj.categories[a].pages.length;b++){
              tmp12 +='<div class="button-general pg_fold_button" cat="'+catObj.categories[a].id+'" pg="'+catObj.categories[a].pages[b].id+'" cdate="'+catObj.categories[a].pages[b].date+'"><div>'
                      + catObj.categories[a].pages[b].name
                      +'</div></div>'
                    }



        tmp13="</div>"

        let tmp2='<option value="'+ catObj.categories[a].id + '">'
                + catObj.categories[a].name
                +'</option>'
        $("#note_categories").append(tmp11+tmp12+tmp13);
        $("#cat_select").append(tmp2)

    }






    $("#note_categories").text()
}

$(document).on("click","#ctpu_add_cat_button",function(){
    let tmp={cat_name:$("#cat_name").val(),
            cat_date:   new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds()
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
        cat_id:$("#cat_select option:selected").val(),
        page_name:$("#page_name").val(),
        page_date:   new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds()
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

$(document).on("click",".pg_fold_button",function(){
  tmp={
        cat_id:$(this).attr("cat"),
        pg_id:$(this).attr("pg"),
        date:$(this).attr("cdate")
      }
  current_page_id=tmp
  $(".title_div").css("visibility","visible")
  $("#nn").text($(this).children().text())
  $("#date").text(tmp.date)
  $(this).addClass("current_note_color",100,function(){
    $(".pg_fold_button").not(this).removeClass("current_note_color");
  });
      $.ajax({
        url:"get_note",
        method:"Post",
        data:tmp,
        success:function(result){  
          let tmpResult=JSON.parse(result)
          if(tmpResult[0]==true){

            current_page=tmpResult[1]
            refreshNote(current_page.notes)
            
          }else{
            
          }
        }
      }) 
  
  
  
})



