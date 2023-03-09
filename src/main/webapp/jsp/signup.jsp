<!DOCTYPE html>
<html>
<head>
    <title>Sign up</title>
    <link rel="stylesheet" href="style/general_ui.css">    
    <link rel="stylesheet" href="style/signup.css">    
    <script src="script/jquery-git.min.js"></script>
    <script src="script/signup.js"></script>
</head>
<body class="background-style">
<div class="auth-box">
    <div class="page-title" style="margin-top:20px;">
        Sign up your account
    </div>
    
    
    <div class="text-input">
        <label for="email" class="text-input-box-label">Email</label>
        <input type="text" placeholder="example@gmail.com" id="email" class="text-input-box"/>
    </div>

    <div class="auth-box-item">
        <label for="gender" class="text-input-box-label">gender</label>  
        <div id="gender">
            <label for="male" class="text-input-box-label" style="padding-left:40px;width:20px;">Male</label>
            <input type="radio"  checked='checked' id="male" name="gender" value="1"/>  
            <label for="female" class="text-input-box-label" style="padding-left:80px;width:20px;">Female</label>
            <input type="radio" id="female" name="gender" value="0"/>  
        </div>
    </div>


    <div class="text-input">
        <label for="age" class="text-input-box-label">Age</label>
        <input type="text" name="age" pattern="[0-9]"  placeholder="18"  id="age" class="text-input-box"/>
    </div>

    <div class="text-input">
        <label for="password" class="text-input-box-label">Password</label>
        <input type="password" placeholder="********" id="password" class="text-input-box"/>
    </div>
    <!--
    
    <div class="text-input">
        <label for="password" class="text-input-box-label">Retype Password</label>
        <input type="password"   placeholder="********" id="password" class="text-input-box"/>
    </div> -->
    <button class="button" id="signup-button">
        Sign up
    </button>
   
    <div class="auth-box-item" style="margin-bottom:30px;margin-top:20px;">
        Have an account <a href="/eorm/login" class="link-text">Login</a>
    </div>
</div>
</body>
</html>