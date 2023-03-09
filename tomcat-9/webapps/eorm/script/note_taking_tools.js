var note=[]                           
var recovery_note=[]                  // store notes that are saved on database

function note_template_str(no_of_notes){
    return "<div class='note' note_number='"+no_of_notes+"' id='note-"+no_of_notes+"'>"                 +
            "<div class='note_number button-general'>"                                                  +
            "<div class='number'>"                                                                      +
            no_of_notes                                                                                 +
            "</div>"                                                                                    +
            "</div>"                                                                                    +
            "<div class='note_name' contenteditable='true'  id='title-"+no_of_notes+"'>"                +
            
            
            "</div>"                                                                                    +
            "<div class='note_content'>"                                                                +
            "<div class='nt' id='body-"+no_of_notes+"' contenteditable='true'>"                         + 
            
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
    let no_of_notes=$("#notes").children().length + 1
    $("#notes").append(
       note_template_str(no_of_notes)
    )
    recovery_note.push({title:"",body:"",db_id:"",date_time:""});
})

//find current note
$(document).on("click focus",".note",function(){    
    let no_of_notes=$("#notes").children().length +1
    if((recovery_note[current_editing_note_number-1].title != $("#title-"+current_editing_note_number).text())    ||
        (recovery_note[current_editing_note_number-1].note != $("#body-"+current_editing_note_number).text())
    ){
        recovery_note[current_editing_note_number-1].title = $("#title-"+current_editing_note_number).text()
        recovery_note[current_editing_note_number-1].body = $("#body-"+current_editing_note_number).text()
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










//----save on ctrl + s----------------------------
$(document).on("keydown",'html',function(e){
    if(e.ctrlKey && e.which == 83){
        e.preventDefault()
        alert("CTRL + S")
    }
})