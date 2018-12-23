<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set value="${pwk:getMicroTotal()}" var="total"/>
<html>
<head>
    <title>微电影列表</title>

</head>
<body>
<div class="container" style="margin-top: 70px;">
    <div>
        <a href="${pageContext.request.contextPath}/back/microFilm/microFilmAdd.jsp" class="btn btn-danger">添加微电影</a>
        <h4>微电影列表</h4>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-condensed table-striped table-hover">
            <tr>
                <th>标题</th>
                <th>图标</th>
                <th>简介</th>
                <th>制作时间</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${pwk:getMicroFilmByList(param.p, param.s)}" var="microFilm">
                <tr>
                    <td class="td2"><a href="${pageContext.request.contextPath}/video_${microFilm.id}.html" target="_blank" >${microFilm.title}</a> </td>
                    <td class="td2"><img src="${pageContext.request.contextPath}/${pwk:getPics(microFilm.icon)[0]}" height="50px" width="50px"></td>
                    <td class="td2">${fn:substring(microFilm.description,0 , 20)}...</td>
                    <td class="td2">${microFilm.projectTime}</td>
                    <td class="td2">
                        <a href="${pageContext.request.contextPath}/back/microFilm/microFilmUpdate.jsp?id=${microFilm.id}" class="btn btn-danger">修改</a>
                        <a href="javascript:if(confirm('确定要删除吗？')){window.location.href='${pageContext.request.contextPath}/microFilm/delete.do?id=${microFilm.id}'}" class="btn btn-success">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<div id="page"></div>
<script type='text/javascript'>
    var options = {
        alignment: 'center',
        currentPage: ${empty param.p?1:param.p},
        totalPages: ${(total+10)/10},
        pageUrl: function (type, page, current) {
            return "${pageContext.request.contextPath}/back/microFilm/microFilmList.jsp?s=10&p=" + page;
        }
    };

    $('#page').bootstrapPaginator(options);
</script>
<jsp:include page="../exclude/message.jsp"/>

</body>
</html>