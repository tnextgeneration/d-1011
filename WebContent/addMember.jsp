<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function test() {
	if(document.form.t1.value == "") { alert('이름을 입력하세요.'); 
	document.form.t1.focus(); return false; 
	}
}
      if(document.form.t1.value == "") { alert('아이디를 입력하세요.'); 
            document.form.t1.focus(); 
            return false; 
}
      if(document.form.t1.value == "") { alert('비밀번호를 입력하세요.'); 
			document.form.t1.focus(); 
			return false; 
			}
		 alert('비밀번호를 입력하세요.');
		 return false;
		 }
	 if(document.form.t1.value == "") { alert('확인비밀번호를 입력하세요.'); 
		document.form.t1.focus(); 
		return false; 
		}
	 <form id="registrationForm">
     <label for="password">비밀번호:</label>
     <input type="password" id="password" required><br>

     <label for="confirm_password">비밀번호 확인:</label>
     <input type="password" id="confirm_password" required><br>
     
     <p id="message" style="color: red;"></p>
     
     <input type="submit" value="확인">
 </form>

 <script>
     document.getElementById("registrationForm").addEventListener("submit", function(event) {
         var password = document.getElementById("password").value;
         var confirm_password = document.getElementById("confirm_password").value;
         var message = document.getElementById("message");
         
         if (password !== confirm_password) {
             message.textContent = "비밀번호와 확인 비밀번호가 다릅니다.";
             event.preventDefault();
         }
         alert('입력이 완료되었습니다!');
     }
</script>

<head>
    <title>회원가입 폼</title>
</head>
<body>
    <h1>회원가입</h1>
    <form action="register" method="post">
        <label for="username">아이디:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="name">성명:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required><br>

        <label for="confirm_password">비밀번호 확인:</label>
        <input type="password" id="confirm_password" name="confirm_password" required><br>

        <label for="gender">성별:</label>
        <input type="radio" id="male" name="gender" value="남성">남성
        <input type="radio" id="female" name="gender" value="여성">여성<br>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="phone">연락처:</label>
        <input type="tel" id="phone" name="phone" required><br>

        <label for="address">주소:</label>
        <input type="text" id="address" name="address" required><br>

        <input type="submit" value="가입">
    </form>
</body>
</html>

