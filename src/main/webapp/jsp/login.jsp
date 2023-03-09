
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="style/general_ui.css">    
    <link rel="stylesheet" href="style/login.css">    
    <script src="script/jquery-git.min.js"></script>
    <script src="script/login.js"></script>
    
</head>
<body class="background-style">
<div class="auth-box">
    <div class="page-title" style="margin-top:20px;">
        Login to your account
    </div>
    
    
    <div class="text-input">
        <label for="email" class="text-input-box-label">Email</label>
        <input type="text" placeholder="example@gmail.com" id="email" class="text-input-box"/>
    </div>
    <div class="text-input">
        <label for="password" class="text-input-box-label">Password</label>
        <input type="password" placeholder="********" id="password" class="text-input-box"/>
    </div>
    <div class="check-box">
        <input type="checkbox" class="check-box-check" id="reme-check"/>
        <label for="reme-check" class="check-box-label">Remember me</label>
    </div>
    <button class="button" id="login_button">
        Login
    </button>
    <div class="auth-box-item link-text-div">
        <a href="fpcheckEmail" class="link-text">Forgot Password?</a>
    </div>
    <div class="auth-box-item" style="margin-bottom:30px;margin-top:20px;">
        No account <a href="signupMap" class="link-text">Sign up</a>
    </div>
</div>
</body>
</html>