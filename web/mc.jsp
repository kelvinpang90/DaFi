<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/css.css">
<title>微电影</title>
</head>
<script type="text/javascript" src="js/jquery-1.4.4.js"></script>

<script type="text/javascript">
$(document).ready(
function(){	
	$('.proje_con .pic').hover(
		function()
		{
		$(this).children().children('.font_con').stop(true,true).slideDown(100);
		},function()
		{
		$(this).children().children('.font_con').stop(true,true).slideUp(100);
		}
	);

});


</script>


<body>
<div class="container">
    <jsp:include page="include/top.jsp" flush="true"/>
	<!--Top End-->
	<div class="mc_film">
		<div class="m_contain">
			<div class="dh_top">
				<div>Our customers<span>我们的客户</span></div>
			</div>
            <div class="mokuai">
                <div class="mo_logo"><a href="#"><img src="images/mc_mokuai_logo.png" /></a></div>
                <div class="mo_pic" style="left:170px;"><a href="http://dpro.hk.cn/video_34.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098449408.png" alt=""/></a></div>
                <div class="mo_pic" style="left:341px;"><a href="http://dpro.hk.cn/video_19.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098051635.png" alt=""/></a></div>
                <div class="mo_pic" style="left:514px;"><a href="javascript:void(0)" class="tb2"></a></div>
                <div class="mo_pic" style="left:685px; "><a href="http://dpro.hk.cn/video_17.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098020935.png" alt=""/></a></div>
                <div class="mo_pic" style="left:83px; top:148px;"><a href="javascript:void(0)" class="tb2"></a></div>
                <div class="mo_pic" style="left:254px; top:148px;"><a href="http://dpro.hk.cn/video_26.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098345086.png" alt=""/></a></div>
                <div class="mo_pic" style="left:599px; top:148px;"><a href="http://dpro.hk.cn/video_20.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098079406.png" alt=""/></a></div>
                <div class="mo_pic" style="left:770px; top:148px;"><a href="http://dpro.hk.cn/video_28.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098375629.png" alt=""/></a></div>
                <div class="mo_pic" style="top:300px;"><a href="http://dpro.hk.cn/video_41.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098608258.png" alt=""/></a></div>
                <div class="mo_pic" style="left:170px; top:300px;"><a href="http://dpro.hk.cn/video_27.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098885678.png" alt=""/></a></div>
                <div class="mo_pic" style="left:341px; top:300px;"><a href="http://dpro.hk.cn/video_43.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098658243.png" alt=""/></a></div>
                <div class="mo_pic" style="left:514px; top:300px;"><a href="http://dpro.hk.cn/video_18.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098037884.png" alt=""/></a></div>
                <div class="mo_pic" style="left:685px; top:300px; "><a href="javascript:void(0)" class="tb2"></a></div>
                <div class="mo_pic" style="left:856px; top:300px; "><a href="http://dpro.hk.cn/video_31.html" class="tb1"><img src="http://dpro.hk.cn/upload/icon/20140804/1407098400996.png" alt=""/></a></div>
            </div>
			<div class="dh_top" style="margin-top:50px;">
				<div>Project tour<span>项目巡展</span></div>
			</div>
			<div class="proje_con">
				<div class="project_left">
					<div class="pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824230859.jpg" width="494" height="365" /><a href="http://dpro.hk.cn/video_20.html" target="_blank"><div class="font_con"><div class="name">TOYOTA</div></div></a></div>
					<div class="pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824231437.jpg" width="494" height="174" /><a href="http://dpro.hk.cn/video_15.html" target="_blank"><div class="font_con"><div class="name">特效MV</div></div></a></div>
					<div class="pic" style="margin-bottom:17px;"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824231645.jpg" width="494" height="361" /><a href="http://dpro.hk.cn/video_16.html" target="_blank"><div class="font_con"><div class="name">9号花园</div></div></a></div>
					<div class="pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824231946.jpg" width="494" height="178" /><a href="http://dpro.hk.cn/video_17.html" target="_blank"><div class="font_con"><div class="name">AIA</div></div></a></div>
				</div>
				<div class="project_right">
					<div class="float_left pic"><img  src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824232150.jpg" width="235" height="365" /><a href="http://dpro.hk.cn/video_37.html" target="_blank"><div class="font_con"><div class="name">九龙湖皇家杯</div></div></a></div>
					<div class="float_right">
						<div class="pic"><img  src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824233511.jpg" width="233" height="175" /><a href="http://dpro.hk.cn/video_18.html" target="_blank"><div class="font_con"><div class="name">GMC</div></div></a></div>
						<div class="pic"><img  src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824233651.jpg" width="233" height="179" /><a href="http://dpro.hk.cn/video_19.html" target="_blank"><div class="font_con"><div class="name">万宁</div></div></a></div>
					</div>
					<div class="clear"></div>
					<div class="pic"><img  src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824232331.jpg" width="482" height="174" /><a href="http://dpro.hk.cn/video_41.html" target="_blank"><div class="font_con"><div class="name">汇丰</div></div></a></div>
					<div class="float_left">
						<div class="pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824232545.jpg" width="234" height="178" /><a href="http://www.dpro.hk.cn/video_36.html" target="_blank"><div class="font_con"><div class="name">温碧泉</div></div></a></div>
						<div class="pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824232847.jpg" width="234" height="178" /><a href="http://dpro.hk.cn/video_38.html" target="_blank"><div class="font_con"><div class="name">中国移动</div></div></a></div>
					</div>
					<div class="float_right pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824234422.jpg" width="237" height="365" /><a href="http://www.dpro.hk.cn/video_40.html" target="_blank"><div class="font_con"><div class="name">荔湾区龙舟文化节</div></div></a></div>
					<div class="clear"></div>
					<div class="float_left pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824234557.jpg" width="234" height="178" /><a href="http://dpro.hk.cn/video_33.html" target="_blank"><div class="font_con"><div class="name">梦特娇</div></div></a></div>
					<div class="float_right pic"><img src="http://dpro.hk.cn/upload/images/QQ%E5%9B%BE%E7%89%8720140824234752.jpg" width="237" height="178" /><a href="http://dpro.hk.cn/video_37.html" target="_blank"><div class="font_con"><div class="name">猎人坊</div></div></a></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			
			<jsp:include page="include/cases.jsp" flush="true"/>
			
			
		</div>
		
		
	</div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
</div>
</body>
</html>
