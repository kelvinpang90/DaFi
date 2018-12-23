<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<c:set value="${pwk:getMicroFilmById(param.id)}" var="microFilm"/>
<c:set value="${pwk:getCommentByMicroId(param.id)}" var="comments"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/css.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/flexSlider/flexslider.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/flexSlider/jquery.flexslider-min.js"></script>
    <title>${microFilm.title}-微电影项目</title>
</head>

<body class="loading">
<div class="container">
    <jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="video_con">
        <div class="video_contain">
            <div class="l_pic">
                <div class="back"><a href="mc.html"><img src="images/back_but.png" /></a></div>
                <c:if test="${not empty microFilm.icon}">
                    <img src="${pageContext.request.contextPath}/${pwk:getPics(microFilm.icon)[0]}" border="0"  />
                </c:if>
            </div>
            <Div class="cent_font"><b>项目名称：</b><div><span>${microFilm.title}</span></div></Div>
            <div class="r_con">
                <div><img src="images/video_font2.jpg" /></div>
                <div class="date">${microFilm.projectTime} </div>
                <div class="font">${microFilm.description}</div>
            </div>
            <div class="clear"></div>
        </div>
		
        <%--<c:forEach items="${pwk:getPics(microFilm.pic)}" var="pic">--%>
            <%--<div class="side_video_p"><img src="${pageContext.request.contextPath}/${pic}"/></div>--%>
        <%--</c:forEach>--%>
        <c:set value="${pwk:getPics(microFilm.pic)}" var="pics"/>
        <c:if test="${not empty pics}">
            <div id="slider" class="flexslider" style="margin-top: 58px;">
                <ul class="slides" style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto;">
                    <c:forEach items="${pics}" var="pic1">
                        <li><img src="${pageContext.request.contextPath}/${pic1}"/></li>
                    </c:forEach>
                </ul>
            </div>
            <div id="carousel" class="flexslider">
                <ul class="slides">
                    <c:forEach items="${pics}" var="pic2">
                        <li><img src="${pageContext.request.contextPath}/${pic2}"/></li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
		<c:if test="${not empty microFilm.video}">
            <div class="side_video_sli">
                <embed src="${microFilm.video}" allowFullScreen="true" quality="high" width="971" height="541" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
            </div>
		</c:if>
        <div class="video_pl_all">所有评论  ${pwk:getCommentTotalByMicroId(param.id)}</div>
        <div class="video_pl_con">
            <form action="${pageContext.request.contextPath}/comment/add.do" method="post" onsubmit="return validate();">
                <div class="first_pl">
                    <div class="l_pic"><img src="images/pl_tb1.jpg" width="56" height="53" /></div>
                    <div class="r_con">
                        <input type="hidden" name="microId" value="${param.id}"/>
                        <div>
                            <input type="text" id="nickName" name="nickName" class="commentInput" onFocus="if(this.value=='昵称'){this.value=''}" onblur="if(this.value==''){this.value='昵称'}" value="昵称"/>
                        </div>
                        <div><textarea class="textarea" id="content" onFocus="if(this.value=='说点什么吧...'){this.value=''}" onblur="if(this.value==''){this.value='说点什么吧...'}" name="content">说点什么吧...</textarea></div>
                        <div style="text-align:right;"><input type="submit" class="sub_but" value="提　交" /></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </form>
            <c:forEach items="${comments}" var="comment">
                <div class="first_pl">
                    <div class="l_pic"></div>
                    <div class="r_con">
                        <div class="date"><fmt:formatDate value="${comment.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/> </div>
                        <div>游客"${comment.nickName}"，评论说：&nbsp;&nbsp;&nbsp;${comment.content}</div>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:forEach>
            <%--<div class="page_but"><ul><a href="#" class="but_one">上一页</a><a href="#" class="but_two">下一页</a></ul></div>--%>
        </div>
	</div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
    <script>
        if(${param.comment eq 'ok'}){
            alert("提交成功，感谢您的评论！")
        }
        function validate(){
            var nickName = $("#nickName");
            var content = $("#content");
            if(nickName.val()==""||nickName.val()=="昵称"){
                alert("请输入您的昵称！");
                nickName.focus();
                return false;
            }
            if(content.val()==""||content.val()=="说点什么吧..."){
                alert("请输入评论内容！");
                content.focus();
                return false;
            }
            return true;
        }
    </script>
    <script>
        $(window).load(function(){
            $('#carousel').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                itemWidth: 210,
                itemMargin: 5,
                asNavFor: '#slider'
            });
            $('#slider').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                sync: "#carousel",
                start: function(slider){
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
</div>
</body>
</html>
