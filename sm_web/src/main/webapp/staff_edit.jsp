<%--
  Created by IntelliJ IDEA.
  User: Charmal
  Date: 2022/3/30
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=8" >
  <title>编辑员工</title>
  <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="../css/common.css"/>
  <link rel="stylesheet" type="text/css" href="../css/thems.css">
  <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
    $(function(){
      //自适应屏幕宽度
      window.onresize=function(){ location=location };

      var main_h = $(window).height();
      $('.hy_list').css('height',main_h-45+'px');

      var main_w = $(window).width();
      $('.xjhy').css('width',main_w-40+'px');

    });
  </script>
</head>

<body onLoad="Resize();">
<div id="right_ctn">
  <div class="right_m">
    <div class="hy_list">
      <div class="box_t">
        <span class="name">编辑员工</span>
      </div>
      <div class="space_hx">&nbsp;</div>
      <form action="edit.do" method="post" name="addForm">
        <input name="id" type="hidden" value="${OBJ.id}"/>  <%--提交过来的id，hidden是隐藏域--%>
        <div class="xjhy">
          <!--高级配置-->
          <ul class="hypz gjpz clearfix">
            <li class="clearfix">
              <span class="title">账户名：</span>
              <div class="li_r">
                <input class="chang" name="account" type="text" value="${OBJ.account}"/>  <%--value是toEdit传过来的默认值--%>
                <i>*</i>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">部门：</span>
              <div class="li_r">
                <select name="did">
                  <c:forEach items="${DLIST}" var="dep">
                    <c:if test="${OBJ.did==dep.id}">
                      <option value="${dep.id}" selected="selected">${dep.name}</option>
                    </c:if>
                    <c:if test="${OBJ.did!=dep.id}">
                      <option value="${dep.id}">${dep.name}</option>
                    </c:if>
                  </c:forEach>
                </select>
                <i>*</i>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">姓名：</span>
              <div class="li_r">
                <input class="chang" name="name" type="text" value="${OBJ.name}"/>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">性别：</span>
              <div class="li_r">
                  <span class="radio">
                  <input name="sex" type="radio" value="男" checked="checked">
                  <em>男</em>
                  </span>
                  <c:if test="${OBJ.sex=='女'}">
                  <span class="radio">
                  <input name="sex" type="radio" value="女" checked="checked"/>
                  <em>女</em>
                  </c:if>
                  </span>
                  <c:if test="${OBJ.sex!='女'}">
                  <span class="radio">
                  <input name="sex" type="radio" value="女"/>
                  <em>女</em>
                  </c:if>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">身份证号：</span>
              <div class="li_r">
                <input class="chang" name="idNumber" type="text" value="${OBJ.idNumber}"/>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">出生日期：</span>
              <div class="li_r">
                <input class="chang" name="bornDate" type="text" value="<fmt:formatDate value="${OBJ.bornDate}" pattern="yyyy-MM-dd"/>"/>
              </div>
            </li>
            <li class="clearfix">
              <span class="title">备注：</span>
              <div class="li_r">
                <input class="chang" name="info" type="text" value="${OBJ.info}"/>
              </div>
            </li>
            <li class="tj_btn">
              <a href="javascript:history.go(-1);" class="back">返回</a>
              <a href="javascript:addForm.submit();">保存</a>
            </li>
          </ul>
          <!--高级配置-->
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
