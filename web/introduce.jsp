<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<c:redirect url="${pageContext.request.contextPath}/index.html"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/css.css">
<title>关于我们</title>
</head>

<body>
<div class="container">
    <jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="intro_bg">
        <div id="myCarousel" class="slide">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/images/all.jpg" alt="slide-00">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/asheng.jpg" alt="slide-01">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/awen.jpg" alt="slide-02">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/hengzai.jpg" alt="slide-03">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/benny.jpg" alt="slide-04">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/laoye.jpg" alt="slide-05">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/bozi.jpg" alt="slide-06">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/MO.jpg" alt="slide-07">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/buss.jpg" alt="slide-08">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/qing.jpg" alt="slide-09">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/tommy.jpg" alt="slide-10">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/zhilan.jpg" alt="slide-11">
                    <div class="container">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/images/ziyao.jpg" alt="slide-12">
                    <div class="container">
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div><!-- /.carousel -->
	</div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
</div>
<script>
    !function ($) {
        $(function(){
            // carousel demo
            $('#myCarousel').carousel();
        })
    }(window.jQuery)
</script>
</body>
</html>
