<script src="script/jquery-git.min.js"></script>

<input type="file" id="input"/> 
<button id="e">hhe</button>
<script>
    function fileUploader(photoFieldId,desinatedUrl){
        let fd=new FormData();
        fd.append('img',$(photoFieldId)[0].files[0]);
        $.ajax({
            url:desinatedUrl,
            type:'POST',
            data:fd,
            processData: false,  // tell jQuery not to process the data
            contentType: false,  // tell jQuery not to set contentType
            success : function(data) {
                console.log(data);
            }
        })
    }

$(document).on('click',"#e",function(e){
    fileUploader("#input","test1")
})
    
</script>