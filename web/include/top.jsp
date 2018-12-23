<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="googleAnalysis.html" flush="true"/>
<div id="top">
    <div class="logo"><img src="../images/logo.png" /></div>
    <div id="menu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/" ${fn:endsWith(pageContext.request.requestURL, 'hk/')?'class=hover':''} ><div>HOME</div><b>首页</b></a></li>
            <li><a href="${pageContext.request.contextPath}/culture_home.html" ${(fn:contains(pageContext.request.requestURI, 'culture')||fn:contains(pageContext.request.requestURI, 'history'))?'class=hover':''}><div>CULTURE</div><b>企业文化</b></a></li>
            <li><a href="${pageContext.request.contextPath}/mc.html" ${fn:contains(pageContext.request.requestURI, 'mc')||fn:contains(pageContext.request.requestURI,'video' )?'class=hover':''}><div>MICRO FILM</div><b>微电影</b></a></li>
            <li style="width:160px;"><a href="${pageContext.request.contextPath}/hunli.html" ${fn:contains(pageContext.request.requestURI,'hunli' )||fn:contains(pageContext.request.requestURI,'mv' )?'class=hover':''}><div>WEDDING VIDEO</div><b>婚礼视频</b></a></li>
            <li><a href="${pageContext.request.contextPath}/introduce.html" ${fn:contains(pageContext.request.requestURI, 'introduce')?'class=hover':''}><div>ABOUT US</div><b>关于我们</b></a></li>
            <li><a href="${pageContext.request.contextPath}/contactus.html" ${fn:contains(pageContext.request.requestURI, 'contactus')?'class=hover':''}><div>CONTACT</div><b>联系我们</b></a></li>
        </ul>
    </div>
</div>
