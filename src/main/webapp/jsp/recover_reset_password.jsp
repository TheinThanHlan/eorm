<!DOCTYPE html>
<html>
<head>
    <title>Change Paswsword</title>
    <link rel="stylesheet" href="style/general_ui.css">    
    <link rel="stylesheet" href="style/recover_reset_password.css">    
    <script src="script/jquery-git.min.js"></script>
    <script src="script/recover_reset_password.js"></script>
</head>
<body class="background-style">
<div class="auth-box">
    <div class="page-title" style="margin-top:20px;">
       Change password 
    </div>
    
    
    <div class="text-input">
        <label for="password1" class="text-input-box-label">Password</label>
        <input type="password" placeholder="********" id="password1" class="text-input-box"/>
    </div>
    <div class="text-input">
        <label for="password2" class="text-input-box-label">Password</label>
        <input type="password" placeholder="********" id="password2" class="text-input-box"/>
    </div>
    <button class="button last-element" id="change_button">
        Change
    </button>
   
</div>
</body>
</html>