<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + 
                                      request.getServerName() + ":" +
                                      request.getServerPort() + path;
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>用户注册</title>

<script type="text/javascript">
	//注册时检查输入项
	function allIsNull(){
		var name=document.registForm.uname.value;
		var pwd=document.registForm.upass.value;
		var repwd=document.registForm.reupass.value;
		var reg=/^[a-zA-Z0-9]{6,12}$/; 
		
		if(name==""){
			alert("请输入姓名！");
			document.registForm.uname.focus();
			return false;
		}
		if(pwd==""){
			alert("请输入密码！");
			document.registForm.upass.focus();
			return false;
		}
		if(reg.test(pwd)==false){
			alert("密码不能含有非法字符，长度在6-12之间");
			document.registForm.upass.focus();
			return false;
		}
		if(repwd==""){
			alert("请确认密码！");
			document.registForm.reupass.focus();
			return false;
		}
		if(pwd!=repwd){
			alert("2次密码不一致，请重新输入！");
			document.registForm.upass.value="";
			document.registForm.reupass.value="";
			document.registForm.upass.focus();
			return false;
		}
		document.registForm.submit();
		return true;
	}
</script>
</head>
<style>
	* {margin:0; padding:0;}
	.container {
	    width:100%;
	    height:100%;
	    margin: 0 auto;
	    position: absolute;
	}
	.container img {
    position: absolute;
    width: 100%;
    height: 100%;
}
	.inner{
    position:absolute;
    background-color: rgba(255,255,255, .6);
    border: 3px solid rgba(255,255,255,1);
    border-radius: 20px;
    width: 350px;
    height: 500px;
    top: 40%;
    left: 82%;
    transform: translate(-50%,-50%);
    box-shadow:11px 11px 11px rgba(50,50,50,1);	
    z-index: 9;
	}
	.table{
	    position:absolute;
	    top: 30%;
	    left: 6%;
	    
	    width: 260px;
	    height: 220px;
	    border-spacing:7px;
	    
	}
	.table2{
    
    position:absolute;
    top: 80%;
    left: 24%;
    
    width: 200px;
    height: 30px;
    border-spacing:7px;
    
}
.Downbutton{
    font-size: 16px;
   
    color: rgb(255,255,255);
    width:200px;
    background-color: #6da1cc;
}
.Downbutton:hover{
    background-color: #266aa1;
}
.TEXT{
    height:80%;
    width: 200px;
    border-radius: 5px;
}

input{
    border: 1px solid #ccc;
    padding: 7px 0px;
    border-radius: 3px;
    padding-left:5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
    }
input:focus{
    border-color: #1261a1;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}
.title_name{
	position:absolute;
			width: 250px;
			height: 100px;
			top:10%;
			left: 35%;
			
}

</style>
<body>
<div class="container">
        <div class="login_main">
          <div class="inner">
            <div class = "title_name"> <h1>欢迎注册</h1></div>
				<form action="${pageContext.request.contextPath }/user/register" method="post" name="registForm">
				
                    <table class="table">
                        <tr height="30px">
                            <td><big ><b >姓&nbsp;&nbsp;&nbsp;&emsp;&emsp;名</b></big></td>
                            <td><input id="username" class="TEXT" type="text"  name="uname" id="uname" placeholder="用户名称"/> </td>
                        </tr>                   
                        <tr height="30px">
                            <td><big><b>密&nbsp;&nbsp;&nbsp;&emsp;&emsp;码</b></big></td>
                            <td><input class="TEXT" type="password" name="upass" id="upass" placeholder = "密码"/> </td>
                        </tr>
                        <tr height="30px">
                            <td><big><b>性&nbsp;&nbsp;&nbsp;&emsp;&emsp;别</b></big></td>
                            <td>
                            	&emsp;&emsp;
	                            <input style="height:15px;width:15px;" class="TEXT" type="radio" name="ugender" id="ugender" value="female"/><big>男</big>&emsp;&emsp;&emsp; 
	                            <input style="height:15px;width:15px;" class="TEXT" type="radio" name="ugender" id="ugender" value="male"/><big>女</big>
                            </td>
                        </tr>
                        <tr height="30px">
                            <td><big><b>确&nbsp;认&nbsp;密&nbsp;码</b></big></td>
                            <td><input class="TEXT" type="password" name="reupass" id="reupass" placeholder = "确认密码"/> </td>
                        </tr>
                    </table>
                    
                    <table class="table2">
                        <tr height="30px">
                            <td>
                  				  <input class="Downbutton" type='button' id="toregister" value=" 注册  " onclick="allIsNull()"/>                          
                            </td>
                        </tr>
                    </table>
				</form>
			</div>
			<img class="active-img" src="<%=path%>/images/registerImage.jpg" alt="">
		</div>
</div>
</body>
</html>