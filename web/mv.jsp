<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pwk:getWeddingTotalByType(param.type)}" var="total"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/css.css">
    <title>${param.type eq 1?'爱情MV':param.type eq 2?'席前回放':param.type eq 3?'婚礼跟拍':param.type eq 4?'视频剪辑':''}</title>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/colorbox/jquery.colorbox-min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/colorbox/example1/colorbox.css" />
</head>
<body>
<div class="container">
    <jsp:include page="include/top.jsp" flush="true"/>
    <!--Top End-->
    <div class="mv_bg">
        <div class="mv_contain">
            <div class="mv_dh">
                <div>
                    ${param.type eq 1?'Love Music Video':param.type eq 2?'Playback':param.type eq 3?'Weeding With Pat':param.type eq 4?'The Video Clip':''}<br/>
                    <span>${param.type eq 1?'爱情MV':param.type eq 2?'席前回放':param.type eq 3?'婚礼跟拍':param.type eq 4?'视频剪辑':''}</span>
                </div>
            </div>
            <div class="mv_cent">
                <c:forEach items="${pwk:getWeddingByType(param.type, param.page,8)}" var="wedding">
                    <div class="pic"><img src="${pageContext.request.contextPath}/${pwk:getPics(wedding.pic)[0]}" width="221" height="221"/>
                        <a href="${wedding.video}" onclick="layer1(this)">
                            <div class="font_con">
                                <div class="name">${wedding.title}</div>
                            </div>
                          </a>
                    </div>
                </c:forEach>
                <div class="clear"></div>

                <div class="page">
                    <c:if test="${param.page ne 1}">
                        <a href="${pageContext.request.contextPath}/mv_${param.type}_${param.page-1}.html"><span>上一页</span></a>
                    </c:if>
                    <c:if test="${param.page eq 1}">
                        <span>第一页</span>
                    </c:if>
                    <c:if test="${total > param.page*8}">
                        <a href="${pageContext.request.contextPath}/mv_${param.type}_${param.page+1}.html"><span>下一页</span></a>
                    </c:if>
                    <c:if test="${total <= param.page*8}">
                        <span>最后一页</span>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="include/bottom.jsp" flush="true"/>
</div>
<script>
    function layer1(obj){
        $(obj).colorbox({iframe:true, innerWidth:780, innerHeight:470});
    }
</script>
<script type="text/javascript">
    $(document).ready(
            function () {
                $('.mv_cent .pic').hover(
                        function () {
                            $(this).children().children('.font_con').stop(true, true).slideDown(100);
                        }, function () {
                            $(this).children().children('.font_con').stop(true, true).slideUp(100);
                        }
                );

            });
</script>
</body>
</html>
