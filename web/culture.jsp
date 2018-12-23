<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/css.css">
<title>企业文化</title>
</head>

<body>
<div class="container">
    <jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="cul_bg">
	<div><img src="images/cul_pic.jpg" border="0" usemap="#Map" />
<map name="Map" id="Map"><area shape="rect" coords="771,16,894,132" href="${pageContext.request.contextPath}/culture_home.html" />
</map></div>
	</div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
</div>
</body>
</html>
