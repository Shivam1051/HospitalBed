<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Admin Login</title>
    <link  href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
      rel="stylesheet" /> 
    <link rel="stylesheet" href="login.css" />
</head>

	<body>
<div class="container">
      <form action="admin_dashboard.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" placeholder="Username here..." />
        <label for="password">Password:</label>
        <input type="password" id="password" placeholder="Password here..." />
        <button>Login</button>
      </form>
      <div class="ear-l"></div>
      <div class="ear-r"></div>
      <div class="panda-face">
        <div class="blush-l"></div>
        <div class="blush-r"></div>
        <div class="eye-l">
          <div class="eyeball-l"></div>
        </div>
        <div class="eye-r">
          <div class="eyeball-r"></div>
        </div>
        <div class="nose"></div>
        <div class="mouth"></div>
      </div>
      <div class="hand-l"></div>
      <div class="hand-r"></div>
      <div class="paw-l"></div>
      <div class="paw-r"></div>
    </div>
  
    <script>
    let usernameRef = document.getElementById("username");
    let passwordRef = document.getElementById("password");
    let eyeL = document.querySelector(".eyeball-l");
    let eyeR = document.querySelector(".eyeball-r");
    let handL = document.querySelector(".hand-l");
    let handR = document.querySelector(".hand-r");

    let normalEyeStyle = () => {
      eyeL.style.cssText = `
        left:0.6em;
        top: 0.6em;
      `;
      eyeR.style.cssText = `
      right:0.6em;
      top:0.6em;
      `;
    };

    let normalHandStyle = () => {
      handL.style.cssText = `
            height: 2.81em;
            top:8.4em;
            left:7.5em;
            transform: rotate(0deg);
        `;
      handR.style.cssText = `
            height: 2.81em;
            top: 8.4em;
            right: 7.5em;
            transform: rotate(0deg)
        `;
    };
    //When clicked on username input
    usernameRef.addEventListener("focus", () => {
      eyeL.style.cssText = `
        left: 0.75em;
        top: 1.12em;  
      `;
      eyeR.style.cssText = `
        right: 0.75em;
        top: 1.12em;
      `;
      normalHandStyle();
    });
    //When clicked on password input
    passwordRef.addEventListener("focus", () => {
      handL.style.cssText = `
            height: 6.56em;
            top: 3.87em;
            left: 11.75em;
            transform: rotate(-155deg);    
        `;
      handR.style.cssText = `
        height: 6.56em;
        top: 3.87em;
        right: 11.75em;
        transform: rotate(155deg);
      `;
      normalEyeStyle();
    });
    //When clicked outside username and password input
    document.addEventListener("click", (e) => {
      let clickedElem = e.target;
      if (clickedElem != usernameRef && clickedElem != passwordRef) {
        normalEyeStyle();
        normalHandStyle();
      }
    });
    </script>
    
</body>
</html>