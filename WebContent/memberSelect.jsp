<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{
    background-color:skyblue;
    color:white;
    text-align:center;
    height:10%;
    line-height:80px;
}
html,body{
   height:100%;
   width:100%;
}
nav{
    background-color:blue;
    color:white;
    height:5%;	
    line-height: 40px;
}
nav ul{
    list-style-type:none;
}
nav li{
    display:inline;
    padding: 0 4%;
}
section{
    height:80%;
}
footer{
    height:5%;
    background-color:green;
    color:white;
    text-align:center;
}
*{
    padding:0;
    margin:0;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="dbconn.jsp" %>
<section>
<h1>회원조회</h1>
<table border=1>
<tr>
   <td>아이디</td>
   <td>이름</td>
   <td>전화번호</td>
   <td>주소</td>
</tr>
<% 
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    String sql="select *from member";
    pstmt=conn.prepareStatement(sql);
    rs=pstmt.executeQuery();
    while(rs.next()){
    	String id=rs.getString("id");
    	String name=rs.getString("name");
    	System.out.println(id);
    	System.out.println(name);
    }
%>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
       
</table>
</section>
<%@include file="footer.jsp" %>
</body>
</html>