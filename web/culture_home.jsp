<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/css.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/colorbox/jquery.colorbox-min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/colorbox/example1/colorbox.css" />
<title>企业文化</title>
</head>

<body>
<div class="container">
	<jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="cul_home">
		<div class="conta_one"><div class="pic_img"><a href="${pageContext.request.contextPath}/history.html"><img src="images/cul_home_p1.jpg" /></a></div></div>
		<div><a href="http://player.youku.com/player.php/sid/XNzQwNzgxNDgw/v.swf" onclick="layer1(this)"><img src="images/cul_home_p2.jpg" /></a></div>
	</div>
	
	<jsp:include page="include/bottom.jsp" flush="true"/>
</div>
<script>
    function layer1(obj){
        $(obj).colorbox({iframe:true, innerWidth:780, innerHeight:470});
    }
</script>
</body>
</html>
