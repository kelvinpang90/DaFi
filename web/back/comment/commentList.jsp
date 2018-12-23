<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pwk:getCommentTotal()}" var="total"/>
<html>
<head>
    <title>评论列表</title>
</head>
<body>
<div class="container" style="margin-top: 70px;">
    <div>
        <h4>评论列表</h4>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-condensed table-striped table-hover">
            <tr>
                <th>ID</th>
                <th>评论人</th>
                <th>评论内容</th>
                <th>相关项目</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${pwk:getCommentByList(param.p, param.s)}" var="comment">
                <tr>
                    <td class="td2">${comment.id}</td>
                    <td class="td2">${comment.nickName}</td>
                    <td class="td2">${comment.content}</td>
                    <td class="td2">${pwk:getMicroFilmById(comment.microId).title}</td>
                    <td class="td2">
                        <a href="javascript:if(confirm('确定要删除吗？')){window.location.href='${pageContext.request.contextPath}/comment/delete.do?id=${comment.id}'}" class="btn btn-success">删除</a>
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
            return "${pageContext.request.contextPath}/back/comment/commentList.jsp?s=10&p=" + page;
        }
    };

    $('#page').bootstrapPaginator(options);
</script>
<jsp:include page="../exclude/message.jsp"/>
</body>
</html>