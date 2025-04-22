<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CAPTCHA</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .center-box {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            background-color: #fff;
        }
        .center-box label, .center-box input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
        .center-box button {
            width: 48%;
            margin: 1%;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            background-color: #007bff;
            color: #fff;
            font-size: 14px;
        }
        .center-box button:hover {
            background-color: #0056b3;
        }
        .captcha-img {
            display: block;
            margin: 0 auto 10px;
        }
    </style>
</head>
<body>
    <div class="center-box">
        <form action="validate" method="post">
            <label for="Name">Name:</label>
            <input type="text" id="Name" name="Name" required>
            
            <label for="Password">Password:</label>
            <input type="text" id="Password" name="Password" required>
            
            <label for="captcha">Enter CAPTCHA:</label>
            <img src="captcha" alt="CAPTCHA Image" class="captcha-img"/>
            <input type="text" id="captcha" name="captcha" required>
            
            <button type="button" onclick="refreshCaptcha()">Refresh CAPTCHA</button>
            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        function refreshCaptcha() {
            const captchaImg = document.querySelector('.captcha-img');
            captchaImg.src = 'captcha?' + new Date().getTime();
        }
    </script>
</body>
</html>
