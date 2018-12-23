<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pwk:getWeddingTotal()}" var="total"/>
<html>
<head>
    <title>婚礼视频列表</title>
    <script src="${pageContext.request.contextPath}/colorbox/jquery.colorbox-min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/colorbox/example1/colorbox.css" />
</head>
<body>
<div class="container" style="margin-top: 70px;">
    <div>
        <a href="${pageContext.request.contextPath}/back/wedding/weddingAdd.jsp" class="btn btn-danger">添加婚礼视频</a>
        <h4>婚礼视频列表</h4>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-condensed table-striped table-hover">
            <tr>
                <th>排序</th>
                <th>标题</th>
                <th>类型</th>
                <th>图标</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${pwk:getWeddingByList(param.p, param.s)}" var="wedding">
                <tr>
                    <td class="td2">${wedding.position}</td>
                    <td class="td2"><a href="${wedding.video}" onclick="layer1(this);">${wedding.title}</a> </td>
                    <td class="td2">
                        <c:if test="${wedding.type eq 1}">
                            爱情MV
                        </c:if>
                        <c:if test="${wedding.type eq 2}">
                            席前回放
                        </c:if>
                        <c:if test="${wedding.type eq 3}">
                            婚礼跟拍
                        </c:if>
                        <c:if test="${wedding.type eq 4}">
                            视频剪辑
                        </c:if>
                    </td>
                    <td class="td2"><img src="${pageContext.request.contextPath}/${pwk:getPics(wedding.pic)[0]}" height="50px" width="50px"></td>
                    <td class="td2">
                        <a href="${pageContext.request.contextPath}/back/wedding/weddingUpdate.jsp?id=${wedding.id}" class="btn btn-danger">修改</a>
                        <a href="javascript:if(confirm('确定要删除吗？')){window.location.href='${pageContext.request.contextPath}/wedding/delete.do?id=${wedding.id}'}" class="btn btn-success">删除</a>
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
            return "${pageContext.request.contextPath}/back/wedding/weddingList.jsp?s=10&p=" + page;
        }
    };

    $('#page').bootstrapPaginator(options);
</script>
<jsp:include page="../exclude/message.jsp"/>
<script>
    function layer1(obj){
        $(obj).colorbox({iframe:true, innerWidth:780, innerHeight:470});
    }
</script>
</body>
</html>