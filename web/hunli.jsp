<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/css.css">
<title>婚礼视频</title>
</head>

<body>
<div class="container">
	<jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="hunli_bg">
		<div class="hunli_banner"><img src="images/film_banner.jpg" width="1345" height="495" /></div>
		<div class="hunli_con">
			<div class="hunli_type">
				<div class="pic"><a href="${pageContext.request.contextPath}/mv_1_1.html"><img src="images/home_wd_p1.png" width="221" height="221" /><div class="font">爱情MV<div><span>Love music video</span></div></div></a></div>
				<div class="pic"><a href="${pageContext.request.contextPath}/mv_2_1.html"><img src="images/home_wd_p2.png" width="221" height="221" /><div class="font">席前回放<div><span>playback</span></div></div></a></div>
				<div class="pic"><a href="${pageContext.request.contextPath}/mv_3_1.html"><img src="images/home_wd_p3.png" width="221" height="221" /><div class="font">婚礼跟拍<div><span>Weeding With pat</span></div></div></a></div>
				<div class="pic"><a href="${pageContext.request.contextPath}/mv_4_1.html"><img src="images/home_wd_p4.png" width="221" height="221" /><div class="font">视频剪辑<div><span>The video clip</span></div></div></a></div>
			</div>
		</div>
		
		
		<div class="h_contain">
			<jsp:include page="include/hotel.jsp" flush="true"/>
		</div>
		
	</div>
	<jsp:include page="include/bottom.jsp" flush="true"/>
</div>
</body>
</html>
