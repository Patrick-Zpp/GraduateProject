<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<link rel="stylesheet" href="css/bootstrap.css"/> 
<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootbox.min.js"></script>

 
  

<style type="text/css">
.login{
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
	background-image:url(images/logbg.jpg);
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
	width:280px;
	height:27px;
	/* margin:15px 0; */
	color:#fff;
	/* padding:0 0 0 10px; */
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
	letter-spacing:1px;
	/* font-size:1.2em; */
	font-size:1.4em;
	color:#000;
}

button{
	/* width:79px; */
	width:120px;
	height:24px;
	text-align:center;
	border:none;
	margin:0 20px 10px 85px;
	
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
	font-size:1.4em;
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
.name{
	font-family:MisoRegular,Helvetica,Arial,sans-serif;
	letter-spacing:1px;
	font-size:1.2em;
	margin:15px 0 0 0;
	padding:0 0 0 10px;
}
.reset{
	padding:30px 0 0 0;
}

</style>

</head>
<body>


<div class="container">
	<form action="doLogin" method="post" id="form" class="form-horizontal" role="form">
	<div class="form-group">
		<br>
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height=150px></td>
		</tr>
		<tr>
		<td align="center" valign="middle">
		<table class="login" width="550px" height="320px" border="0" align="center" cellpadding="5px" cellspacing="0">
			<tr>
				<td align=center colspan="3"><h1>Welcome to Bank of PaTi</h1></td>
			</tr>
			<tr><td height=15px></td></tr>
			<tr>
				<td align="right">
					<label for="username">User ID</label>
				</td>
				<td width=10px></td>
				<td>
					<input type="text" name="userid" id="userid">
				</td>
			</tr>
			<tr><td height=15px></td></tr>
			<tr>
				<td align="right" width=40%>
					<label for="password">Password</label>
				</td>
				<td width=10px></td>
				<td>
					<input type="password" name="password" id="password">
				</td>					
			</tr>
			<tr><td height=15px></td></tr>
			<tr>
				<td colspan="3" align="center">
					<!-- <font size=4px><a href="doReset">If you Forget your Password? Click Here.</a></font> -->
					<font size=4px><a data-toggle="modal" data-target="#myModal">If you Forget your Password? Click Here.</a></font>
				</td>
			</tr>
			<tr><td height=15px></td></tr>
			<tr>
				<td colspan="3">
					<button type="submit">LOGIN</button>				
					<a href="doRegister"><div class="register">REGISTER</div></a>
				</td>
			</tr>
			<tr>
				<td align="center">
				<!--  <font color="black" size=6px>${error}</font> -->	
				</td>
			</tr>
		</table>
		</table>
		<br>
		</div>
	</form>	
</div>

<% 
	String info=(String)request.getAttribute("error");
    if(info!=null){
%> 
    <Script type="text/javascript">
        var info = "<%= request.getAttribute("error")%>";
    	bootbox.alert(info,function(){});
    </Script>
<%
    }
%>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true" width=80%>
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" 
               aria-hidden="true">×
            </button>
            <h3 class="modal-title" id="myModalLabel">
               Reset The Password
            </h3>
         </div>
         <div class="modal-body">
        	<table class="table table-hover" width=100%>
			<tr>
				<td class="reset" align="right" width=30%><font size=4px>User Name:</font></td>
				<td width=5%></td>
				<td><input class="form-control" type="text" id="userAc"></td>
			</tr>
			<tr>
				<td class="reset" align="right"><font size=4px>User ID:</font></td>
				<td width=5%></td>
				<td><input class="form-control" type="text" id="userID"></td>
			</tr>
			<tr>
				<td class="reset" align="right"><font size=4px>Security Email:</font></td>
				<td width=5%></td>
				<td><input class="form-control" type="text" id="email"></td>
			</tr>
			</table>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Return</button>
            <button type="button" class="btn btn-primary" onclick="show()">Submit</button>
         </div>
      </div><!-- /.modal-content -->
   </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
 function show(){
	 ac = $("#userAc").val();
	 id = $("#userID").val();
	 email = $("#email").val();	 	 
	 if(ac==""||ac==null){
		 bootbox.alert("Please enter the user name.",function(){})
		 return;
	 }else if(id==""||id==null){
		 bootbox.alert("Please enter the user ID.",function(){})
		 return;
	 }else if(email==""||email==null){
		 bootbox.alert("Please enter the security email address.",function(){})
		 return;
	 }else{
		 $.ajax({
				url:"<%=request.getContextPath()%>/reset",
				type:"POST",
				dataType:"text",
				async:false,
				data:
				{
				'ac':(ac),
				'id':(id),
				'email':(email)
				},
				success:function(data){
					if(data=="1"){
						//email不合法
						bootbox.alert("The format of email is incorrect. Please check and enter it again.",function(){
							document.getElementById('email').value = "";
						})
					}else if(data=="2"){
						//无用户
						bootbox.alert("The Account is not exist. Please check and enter it again.",function(){
							document.getElementById('userAc').value = "";
							document.getElementById('userID').value = "";
							document.getElementById('email').value = "";
						});
					}else if(data=="3"){
						//成功
						bootbox.alert("The Email for reseting your password have sent to your mail box. Please check the email.",function(){
							window.location.href="returnLogin";
						});
					}else if(data=="4"){
						//email不对
						bootbox.alert("The email address is incorrect. Please check and enter it again.",function(){
							document.getElementById('email').value = "";
						});
					}else{
						//出错
						bootbox.alert("Fail to operate. Please try it again later",function(){
							window.location.href="returnLogin";
						});
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					   bootbox.alert(XMLHttpRequest.status);
					   bootbox.alert(XMLHttpRequest.readyState);
					   bootbox.alert(textStatus);
				}
			})
	 }
	 
 }
   
   
</script>
</body>
</html>