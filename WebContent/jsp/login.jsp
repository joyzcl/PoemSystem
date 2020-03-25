<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + 
                                      request.getServerName() + ":" +
                                      request.getServerPort() + path;
%> 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>用户登录</title>
    
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
    height: 450px;
    top: 40%;
    left: 82%;
    transform: translate(-50%,-50%);
    box-shadow:11px 11px 11px rgba(50,50,50,1);	
    z-index: 9;
	}
	.table{
	    position:absolute;
	    top: 35%;
	    left: 12%;
	    
	    width: 260px;
	    height: 100px;
	    border-spacing:7px;
	    
	}
	.table2{
    
    position:absolute;
    top: 65%;
    left: 28%;
    
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
    height:90%;
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
            <div class = "title_name"> <h1>诗词之家</h1></div>
            <form action="${pageContext.request.contextPath }/user/login" method="post" name="loginForm">
                    <table class="table">
                        <tr height="30px">
                            <td><big><b>账&nbsp;&nbsp;号</b></big></td>
                            <td><input id="username" class="TEXT" type="text"  name="username" id="username" placeholder="用户名称"/> </td>
                        </tr>
                        <tr height="30px">
                            <td><big><b>密&nbsp;&nbsp;码</b></big></td>
                            <td><input class="TEXT" type="password" name="password" id="password" placeholder = "密码"/> </td>
                        </tr>
                        
                    </table>
                    <table class="table2">
                        <tr height="30px">
                            <td>
                                <input class="Downbutton" type="submit" id="login" value="  我要登录 "  
                                /><br><br>
                                <input class="Downbutton" type='button' id="toregister" value="  我要注册  " onclick="location='<%=path%>/jsp/register.jsp'"
                                />
                                
                            </td>
                        </tr>
                    </table>
               </form>
              
            </div>
             <img class="active-img" src="<%=path%>/images/loginImage.jpg" alt="">
        </div>
  </body>
  
</html>
