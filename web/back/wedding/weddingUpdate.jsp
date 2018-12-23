<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pwk:getWeddingById(param.id)}" var="wedding"/>
<html>
<head>
    <title>修改婚礼视频</title>
    <link href="${pageContext.request.contextPath}/js/uploadify/uploadify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">
        function deletePic() {
            $("#iconPic").empty();
            $("#pic").attr("value", "");
            $("#picDiv").append("<div class='controls' id='upload'> <div id='fileQueue'></div><input type='file' name='uploadify' id='uploadify'/></div>");
            $("#uploadify").uploadify({
                'id': 'uploadify',
                'fileTypeDesc':'*.jpg;*.gif;*.jpeg;*.png;*.bmp',
                'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
                'uploader': '${pageContext.request.contextPath}/imageUpload?type=weddingIcon',
                'uploadLimit' : 1,
                'onUploadSuccess': function (file, data, response) {
                    var picPath = $("#pic").val();
                    picPath += data;
                    $("#pic").attr("value", picPath);
                    $("#iconPic").append("<img src=" + "${pageContext.request.contextPath}/" + data + " width='248px' height='248px'> ");
                }
            });
        }
    </script>
</head>
<body>

    <form action="${pageContext.request.contextPath}/wedding/update.do" method="post" class="form-horizontal" onsubmit="return validateForm()"
          id="theForm">
        <input type="hidden" name="id" value="${wedding.id}">
        <div class="control-group">
            <label class="control-label" for="title">视频名称</label>

            <div class="controls">
                <input type="text" name="title" id="title" class="input-xxlarge" placeholder="视频名称" value="${wedding.title}">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="type">视频类型</label>

            <div class="controls">
                <select name="type" id="type">
                    <option value="1" ${wedding.type eq 1?'selected':""}>爱情MV</option>
                    <option value="2" ${wedding.type eq 2?'selected':""}>席前回放</option>
                    <option value="3" ${wedding.type eq 3?'selected':""}>婚礼跟拍</option>
                    <option value="4" ${wedding.type eq 4?'selected':""}>视频剪辑</option>
                </select>
            </div>
        </div>

        <div class="control-group" id="picDiv">
            <label class="control-label">封面图（请上传长宽比例1：1的图片）</label>
            <input type="hidden" id="pic" name="pic" value="${wedding.pic}">

            <div class="controls"  id="iconPic">
                <c:forEach items="${pwk:getPics(wedding.pic)}" var="pic">
                    <img src="${pageContext.request.contextPath}/${pic}" width="248px" height="248px"/>
                </c:forEach>
                <a href="javascript:deletePic()">删除图片</a>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="video">视频路径</label>

            <div class="controls">
                <input type="text" name="video" id="video" class="input-xxlarge" placeholder="视频路径" value="${wedding.video}">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="position">排序</label>

            <div class="controls">
                <input type="text" name="position" id="position" class="input-mini" placeholder="如1,2,3,4..." value="${wedding.position}">
            </div>
        </div>

        <div class="control-group">
            <input type="submit" value="保存" class="btn btn-danger"/>
        </div>
    </form>
</div>
<jsp:include page="../exclude/message.jsp"/>
<script>
    function validateForm(){
        var title = $("#title");
        var icon = $("#icon");
        var video = $("#video");
        if(title.val()==""){
            alert("请填写项目名称");
            title.focus();
            return false;
        }
        if(icon.val()==""){
            alert("请上传封面图");
            icon.focus();
            return false;
        }
        if(video.val()==""){
            alert("请填写视频路径");
            video.focus();
            return false;
        }
        return true;
    }
</script>
</body>

</html>