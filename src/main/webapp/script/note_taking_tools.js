
var note=[]                           
var recovery_note=[]                  // store notes that are saved on database

function note_template_str(no_of_notes,note_id=undefined,note_title="",note_body=""){
    return "<div class='note' note_number='"+no_of_notes+"' id='note-"+no_of_notes+"' note_id='"+note_id+"'>"                 +
            "<div class='note_number button-general'>"                                                  +
            "<div class='number'>"                                                                      +
            no_of_notes                                                                                 +
            "</div>"                                                                                    +
            "</div>"                                                                                    +
            "<div class='note_name' contenteditable='true'  id='title-"+no_of_notes+"'>"                +
            note_title      +
            
            "</div>"                                                                                    +
            "<div class='note_content'>"                                                                +
            "<div class='nt' id='body-"+no_of_notes+"' contenteditable='true'>"                         + 
                note_body+
            "</div>"                                                                                    +
            "</div>"                                                                                    +   
            "</div>"
}














$(function(){
    $(".draggable").draggable(
        {
            containment:'body'
        }
    )
})

$(document).on("dblclick","#draggable_button",function(){
    $("#tools").toggle("slide",{direction:"up"});
})



//_-----------draggable----------------------------------------------



/*
$(document).on("dblclick",".current_tool",function(){
    $(this).siblings(".more_tools").toggle("slide",{direction:'right'}) 
})
*/
/*
$(document).on("click",".tool",function(){
    $(this).addClass("tool_clicked_color",100,function(){
        $(".tool").not(this).removeClass("tool_clicked_color",100);
    })
})
*/

//---------------current_using_button_________________________________
var current_editing_note_number=1;
$(document).on("click","#add_note_button",function(){
    if(current_page.id!=undefined){
        let no_of_notes=$("#notes").children().length + 1
        $("#notes").append(
        note_template_str(no_of_notes)
        )
        $($("#title-"+no_of_notes).focus())
    }else{
        alert("please select the page first");
    }
    $("#is_saved").children("svg").css("fill","red")
    
})

//find current note
$(document).on("click focus",".note",function(){    
    let no_of_notes=$("#notes").children().length +1

    let tmp={ title:$('#title-'+current_editing_note_number).html(),
                body:$('#body-'+current_editing_note_number).html(),
                page_id:current_page.id,
                note_date:   new Date().getFullYear()+"-"+new Date().getMonth()+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds(),
            }


    current_editing_note_number=$(this).attr("note_number")
    tmp=$(this).children(".note_number")
    $(this).children(".note_number").addClass("current_note_color",100,function(){
        $(".note_number").not(tmp).removeClass("current_note_color",100)
    
    })  

})




//-----------------------------------------------------------------------

//----------------------------bold italic--------------------------------------

function getSelectionText()
{
    var text = "";
    if (window.getSelection) {
        text = window.getSelection().toString();
    }
    return text;
}
function split(str,start,end) {
  const result = [str.slice(0,start),str.slice(start,end), str.slice(end)];
  return result;
}

//---------------------------------bold button----------------------
$(document).on("click","#bold_button",function(){
       let txt=$("#body-"+current_editing_note_number).html()+" ";     
       let selectedText = getSelectionText();
       let start = txt.indexOf(selectedText);
       let end = start + selectedText.length;
        if(start>0 && end<start){
            let r1=split(txt,start,end);
            let result=r1[0]+"<b>"+r1[1]+"</b>"+r1[2];
            $("#body-"+current_editing_note_number).html(result) 
        }

});

//---------------------------------italic button--------------------------------------------

$(document).on("click","#italic_button",function(){
       let txt=$("#body-"+current_editing_note_number).html()+" ";     
       let selectedText = getSelectionText();
       let start = txt.indexOf(selectedText);
       let end = start + selectedText.length;
       if(start>0 && end>start){
            let r1=split(txt,start,end);
            let result=r1[0]+"<i>"+r1[1]+"</i>"+r1[2];
            $("#body-"+current_editing_note_number).html(result);
       }
});




function refreshNote(notes){
    $("#notes").html("")
    for (let a=0;a<notes.length;a++){
       $("#notes").append(note_template_str(a+1,notes[a].id,notes[a].name,notes[a].body));
    }
}





//----save on ctrl + s----------------------------
$(document).on("keydown",'html',function(e){
    if(e.ctrlKey && e.which == 83){
        e.preventDefault()
        current_page.notes=[]
        for(let a=0;a<$("#notes").children().length;a++){
            if($("#note-"+(a+1)).attr("note_id")!=undefined && $("#title-"+(a+1)).text()!=""  && $("#body-"+(a+1)).html()!=""){
                current_page.notes.push({})
                current_page.notes[a].id=($("#note-"+(a+1)).attr("note_id")=='undefined'?-1:$("#note-"+(a+1)).attr("note_id"))
                current_page.notes[a].name=$("#title-"+(a+1)).text()
                current_page.notes[a].body=$("#body-"+(a+1)).html()
                current_page.notes[a].date= new Date().getFullYear()+"-"+new Date().getMonth()+"-"+new Date().getDate()+" "+new Date().getHours()+":"+new Date().getMinutes()+":"+new Date().getSeconds()
            }
        }
        
    tmp=JSON.stringify(current_page.notes);
    $.ajax({
      url:"edit_note",
      method:"Post",
      data:{id:current_page.id,notes:tmp},
      success:function(result){
        let tmpResult=JSON.parse(result)
        if(tmpResult[0]==true){
            current_page=  tmpResult[1]
            refreshNote(current_page.notes);
            $("#is_saved").children("svg").css("fill","green")
        }else{
            
        }
      }
    }) 





        
    }
})




$(document).on("click","#delete_button",function(){
    let tmp={ 
        page_id:current_page.id,
        note_id:$('#note-'+current_editing_note_number).attr("note_id"),
    } 
    if(tmp.note_id!='undefined'){
        $.ajax({
            url:"delete_note",
            method:"Post",
            data:{page_id:current_page.id,note_id:tmp.note_id},
            success:function(result){
              let tmpResult=JSON.parse(result)
              current_page=  tmpResult[1]
             refreshNote(current_page.notes);
            }
        })
    }
   
})