<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--引入jstl标签库 -->
<%@include file="common/tag.jsp"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='GBK'>
  <title>login</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/userDetail.css">
  <script type="text/javascript" src="<%=basePath%>resources/js/jquery-2.0.0.min.js"></script>
  <script type="text/javascript" src="<%=basePath%>resources/js/userDetail.js" charset="GBK"></script>
</head>

<body>
<div class="outerContainer">

  <!--导航栏 -->
  <div style="position:fixed;width:1366px;z-index:100;">
    <div class="navContainer">
      <div class="nav">
        <a href="#">主页</a>
        <a href="#">关于</a>
        <span>YouAndMe</span>
        <!-- //TODO 搜索 -->
        <input type="text" class="navSearch" placeholder="Search dynamics" />
        <span>语言：简体中文</span>
      </div>
    </div>
  </div>

  <div class="blueDiv">
    <img src="http://139.129.47.176/J2ee fileUpload/Social dynamics/${userModel.headImg}">
    <span>${userModel.username}</span>
    <span>${userModel.email}</span>
    <span></span>
    <span>${userModel.address}</span>
    <span></span>
    <span>${userModel.joinTime}</span>
    <span>${userModel.description}</span>
  </div>

  <div class="littleNav">
    <a href="#">Dynamics
      <span>${userModel.dynamicsNum}</span>
    </a>
    <a href="#">Following
      <span>${userModel.followingNum}</span>
    </a>
    <a href="#">Followers
      <span>${userModel.followersNum}</span>
    </a>
    <button id="changeProfile">Set profile</button>
  </div>

</div>

<div class="dialogContainer"></div>
<div class="dialog">
  <span>Change your information</span>
  <img src="http://139.129.47.176/J2ee fileUpload/Social dynamics/${userModel.headImg}" id="dialog_headImg">

  <form id="changeHeadImgForm">
  <a href="">
    <input type="file" name="headImg" class="dialog__input1" /><!-- 注意要给出name，否则后台无法取到-->
  </a>
  </form>

  <span></span>
  <input type="text" class="inputTag dialog_input2" value="${userModel.username}" id="dialog_value2">
  <span></span>
  <input type="text" class="inputTag dialog_input3" value="${userModel.email}" id="dialog_value3">
  <span></span>
  <input type="text" class="inputTag dialog_input4" value="${userModel.address}" id="dialog_value4">
  <span></span>
  <textarea type="text" id="dialog_value5">${userModel.description}</textarea>
  <button id="dialog_sureChange">确认修改</button>
</div>

</body>
</html>
