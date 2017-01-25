<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>

<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootbox.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css"/>

<style type="text/css">
.reg{
	background:#fff;
	filter:alpha(Opacity=70);-moz-opacity:0.7;opacity:0.7;
	
	-moz-border-radius: 9px;
	-webkit-border-radius: 9px;
	border-radius: 9px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 13px #000000;
	-webkit-box-shadow: 0px 0px 13px #000000;
	box-shadow: 0px 0px 13px #000000;
}
body{
	/* background-color:grey; */
	background-image:url(images/7.jpg);
	background-repeat:no-repeat;
	background-attachment:fixed;
	background-size:cover;
	-moz-background-size:cover;
	-webkit-background-size:cover;
}
/* .container{
	background-image:url(image/1.jpg);
	background-repeat:no-repeat;
} */
input{
	background-color:#303030;
	-webkit-border-radius:.4em;
	-moz-border-radius:.4em;
	border-radius:.4em;
	
	-moz-box-shadow:0 -1px 0 0px #000;
	-webkit-box-shadow:0 -1px 0 0px #000;
	box-shadow:0 -1px 0 0px #000;
	
	border:none;
	width:250px;
	height:27px;
	margin:15px 0;
	color:#fff;
	padding:0 0 0 10px;
	font-family:Arial,Helvetica,sans-serif;
	font-size:1.2em;
	letter-spacing:2px;	
}
@font-face{
	font-family:'MisoRegular';
	font-weight:normal;
	font-style:normal;
}
label,button{
	font-family:MisoRegular,Helvetica,Arial,sans-serif;
	text-transform:uppercase;
	letter-spacing:0.5px;
	font-size:1.2em;
	color:#000;
}
button{
	/* width:79px; */
	width:120px;
	height:24px;
	text-align:center;
	border:none;
	margin:0 20px 10px 80px;
	
	background:#363535;
	background:-webkit-gradient(linear,top);
	background:-moz-linear-gradient(bottom,#303030);
	
	-webkit-border-radius:.2em;
	-moz-border-radius:.2em;
	border-radius:.2em;
	
	-webkit-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	-moz-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	color:#fff;
/* 	text-align:center; */
}
button:hover{
	background:#363535;
	background:-webkit-gradient(linear,top);
	background:-moz-linear-gradient(bottom,#303030);
}
button:active{
	border:none;
	-webkit-box-shadow:0 0px 2px rgba(255,255,255,255,0.1);
	-moz-box-shadow:0 0px 2px rgba(255,255,255,255,0.1);
	box-shadow:0 0px 2px rgba(255,255,255,255,0.1);
}
h2{
	font-family:MisoRegular,Helvetica,Arial,sans-serif;
}
.register{
	font-family:MisoRegular,Helvetica,Arial,sans-serif;
	text-transform:uppercase;
	letter-spacing:1px;
	font-size:1.2em;
	color:#000;

	width:120px;
	height:24px;
	text-align:center;
	border:none;
	margin:0 85px 10px 0;
	float:right;
	
	background:#363535;
	background:-webkit-gradient(linear,top);
	background:-moz-linear-gradient(bottom,#303030);
	
	-webkit-border-radius:.2em;
	-moz-border-radius:.2em;
	border-radius:.2em;
	
	-webkit-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	-moz-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	color:#fff;
}
a:hover{
	text-decoration:none;
	color:#000;
}
a:link{
	text-decoration:none;
}
a:visited{
	text-decoration:none;
}
.return{
	font-family:MisoRegular,Helvetica,Arial,sans-serif;
	text-transform:uppercase;
	letter-spacing:1px;
	font-size:1.2em;
	color:#000;

	width:120px;
	height:24px;
	text-align:center;
	border:none;
	margin:0 85px 10px 0;
	float:right;
	
	background:#363535;
	background:-webkit-gradient(linear,top);
	background:-moz-linear-gradient(bottom,#303030);
	
	-webkit-border-radius:.2em;
	-moz-border-radius:.2em;
	border-radius:.2em;
	
	-webkit-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	-moz-box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	box-shadow:0 0px 1px rgba(255,255,255,255,0.1);
	color:#fff;
}

</style>

</head>
<body>

<div class="container">
	<form action=" register"  method="post" name ="myForm" onsubmit="return validateForm(this)">
		<br>
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height=90px></td>
		</tr>
		<tr>
		<td align="center" valign="middle">
		<table class="reg" width="530px" height="300px" border="0" align="center" cellpadding="5px" cellspacing="0">
			<tr>
				<td align=center colspan="2"><h1>Online Banking System</h1></td>
			</tr>
			<tr>
				<td align="right" width=40%>
					<label for="username">Username:</label>
				</td>
				<td>
					<input type="text" name="uname">
				</td>
			</tr>
			<tr>
				<td align="right" width=40%>
					<label for="idnumber">ID Number:</label>
				</td>
				<td>
					<input type="text" name="IdNum" onblur="varifyid()" onfocus="fuid()"><span id="info_id" style="color:red"></span>
				</td>
			</tr>
			<tr>
				<td align="right" width=40%>
					<label for="email">Security Email:</label>
				</td>
				<td>
					<input type="text" name="email" id="email" onblur="varifyEmail(this.value)" onfocus="femail()">  <span id="info_email" style="color:red"></span>
				</td>
			</tr>
			<tr>
				<td align="right" width=40%>
					<label for="pwd">Password:</label>
				</td>
				<td>
					<input type="password" name="pwd" id="pwd" onblur="varifyPwd(this.value)" onfocus="fpwd()" >   <span id="info_pwd" style="color:red"></span> 
				</td>
			</tr>
			<tr>
				<td align="right" width=40%>
					<label for="pwd">Confirm:</label>
				</td>
				<td>
					<input type="password" name="cpwd" id="cpwd" onblur="varifyCPwd(this.value)" onfocus="fcpwd()">   <span id="info_cpwd" style="color:red"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<button type="submit" >register</button>
				</td>
				<td align="center">
					<a href="returnLogin"><div class="return">RETURN</div></a>
				</td>
			</tr>
			<tr>
		<!-- <td colspan="2"><h2>${message}</h2></td>  -->	
			</tr>
		</table>
		</table>
		<br>
	</form>
</div>


<%  
        HttpSession sess = request.getSession();  
        //String flag = (String)sess.getAttribute("flag"); 
        String flag  = (String)request.getAttribute("flag");
        String info =(String)request.getAttribute("message");
        
        
      
    if(flag == "yes"){  
        %>  
  			 <script type="text/javascript">       				
             		//alert("Have send an activate email to you! Please Check!"); 
             		bootbox.alert("Have send an activate email to you. Please Check.",function(){
             			window.location.href="returnMain";
             		});
             		/* window.location("returnLogin"); */
             		
             </script>
        <%  
    } 
    
    if(info!=null){    	
 %>
            <script type="text/javascript">  
                    var info ="<%=request.getAttribute("message")%>";
             		bootbox.alert(info);  
             		//alert("dwdwddwd");
             </script>
    
  <%
  }
    %>
<script type="text/javascript">
function returnLogin(){
	window.location("returnLogin");
}
</script>

<script>
	var aid=true;
	var aemail=true;
	var apwd=true;
	var acpwd=true;
//判断usid是否是数字
function varifyid(){
	var uid=document.forms["myForm"]["IdNum"].value;
	if (uid==null || uid=="")
	 {  
		document.getElementById("info_id").innerHTML="User Id number can not be empty.";
		aid=false;
	 }else if(isNaN(uid)){
		 aid=false;
		 document.getElementById("info_id").innerHTML="User Id number can only contain number .";
	 }else{
		 aid=true;
	 }
}
//检查邮件的格式
 function varifyEmail(strEmail){
		if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) 
		   { aemail=true; }
		else{
			document.getElementById("info_email").innerHTML ="Wrong format ";
			aemail= false;
		}
	} 
 
//检查密码的格式
function varifyPwd(pass){
	if(pass.length < 6){   
		document.getElementById("info_pwd").innerHTML ="The length of the password can not be less than 6";	
		apwd=false;
	} else
	
	if(!(pass.match(/([a-z])+/)&&pass.match(/([0-9])+/)&&pass.match(/([A-Z])+/))){  
		apwd=false;
		document.getElementById("info_pwd").innerHTML ="Password must contain uppercase, lowercase and number.";		
	}  else{
		apwd=true;
	} 
	   
}
//检查确认密码与密码相不相等
function varifyCPwd(cpwd){
	var pwd;
	pwd = document.getElementById("pwd").value;
	if(cpwd!=pwd){
		document.getElementById("info_cpwd").innerHTML ="Password is different.";
	    acpwd=false;
	}else{
		acpwd=true;
	}
}

//鼠标聚焦usid框时
function fuid(){
	document.getElementById("info_id").innerHTML ="";
}
//鼠标聚焦邮件框时
function femail(){
	document.getElementById("info_email").innerHTML ="";
}
//鼠标聚焦密码
function fpwd(){
	document.getElementById("info_pwd").innerHTML ="";
}
//鼠标聚焦确认密码
function fcpwd(){
	document.getElementById("info_cpwd").innerHTML ="";
}

 
 //如果返回FALSE，则不提交表单。
 function validateForm(){
	 if(aid==true&&aemail==true&&apwd==true&&acpwd==true){
		 return true;
	 }else{
		 bootbox.alert("please check your infomation.");
		 return false;
	 }
 }
  
</Script>

</body>
</html>