<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.pwk.com" prefix="pwk" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pwk:getMicroFilmById(param.id)}" var="microFilm"/>
<html>
<head>
    <title>修改微电影</title>
    <link href="${pageContext.request.contextPath}/js/uploadify/uploadify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-datetimepicker.min.js"></script>
    <script>
        function deleteIcon(){
            $("#iconPic").empty();
            $("#icon").attr("value", "");
            $("#iconDiv").append("<div class='controls' id='upload'> <div id='fileQueue'></div><input type='file' name='iconUpload' id='iconUpload'/></div>");
            $("#iconUpload").uploadify({
                'fileObjName': 'iconUpload',
                'fileTypeDesc': '*.jpg;*.gif;*.jpeg;*.png;*.bmp;',
                'uploadLimit': 1,
                'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
                'uploader': '${pageContext.request.contextPath}/imageUpload?type=icon',
                'onUploadSuccess': function (file, data, response) {
                    var picPath = $("#icon").val();
                    picPath += data;
                    $("#icon").attr("value", picPath);
                    $("#iconPic").append("<img src=" + "${pageContext.request.contextPath}/" + data + ">");
                }
            });
        }
        function deletePic(){
            $("#projectPic").empty();
            $("#pic").attr("value", "");
            $("#picDiv").append("<div class='controls' id='upload'> <div id='fileQueue'></div><input type='file' name='projectUpload' id='projectUpload'/></div>");
            $("#projectUpload").uploadify({
                'fileObjName': 'projectUpload',
                'fileTypeDesc': '*.jpg;*.gif;*.jpeg;*.png;*.bmp;',
                'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
                'uploader': '${pageContext.request.contextPath}/imageUpload?type=microFilm',
                'onUploadSuccess': function (file, data, response) {
                    var picPath = $("#pic").val();
                    picPath += data;
                    $("#pic").attr("value", picPath);
                    $("#projectPic").append("<img src=" + "${pageContext.request.contextPath}/" + data + ">");
                }
            });
        }
    </script>
</head>
<body>

    <form action="${pageContext.request.contextPath}/microFilm/update.do" method="post" class="form-horizontal" onsubmit="return validateForm()"
          id="theForm">
        <input type="hidden" name="microFilmId" value="${microFilm.id}">
        <div class="control-group">
            <label class="control-label" for="title">项目名称</label>

            <div class="controls">
                <input type="text" name="title" id="title" class="input-xxlarge" placeholder="项目名称" value="${microFilm.title}">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="description">项目介绍</label>

            <div class="controls">
                <textarea name="description" id="description" style="width:530px ">${microFilm.description}</textarea>
            </div>
        </div>

        <div class="control-group"  id="iconDiv">
            <label class="control-label">封面图</label>
            <input type="hidden" id="icon" name="icon" value="${microFilm.icon}">

            <div class="controls" id="iconPic">
                <c:forEach items="${pwk:getPics(microFilm.icon)}" var="pic">
                    <img src="${pageContext.request.contextPath}/${pic}"/>
                </c:forEach>
                <a href="javascript:deleteIcon()">删除图片</a>
            </div>
        </div>

        <div class="control-group"  id="picDiv">
            <label class="control-label">项目图片</label>
            <input type="hidden" id="pic" name="pic" value="${microFilm.pic}">

            <div class="controls" id="projectPic">
                <c:forEach items="${pwk:getPics(microFilm.pic)}" var="pic">
                    <img src="${pageContext.request.contextPath}/${pic}"/>
                </c:forEach>
                <a href="javascript:deletePic()">删除图片</a>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="time">制作时间</label>

            <div class="controls">
                <div id="datetimepicker" class="input-append date">
                    <input type="text" name="time" id="time" value="${microFilm.projectTime}"/>
          <span class="add-on">
            <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
          </span>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker').datetimepicker({
                            format: 'yyyy-MM-dd',
                            language: 'en',
                            pickDate: true,
                            pickTime: false
                        });
                    });
                </script>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="video">视频路径</label>

            <div class="controls">
                <input type="text" name="video" id="video" class="input-xxlarge" placeholder="视频路径" value="${microFilm.video}">
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
        var pic = $("#pic");
        var projectTime = $("#time");
        var video = $("#video");
        if(title.val()==""){
            alert("请填写项目名称");
            title.focus();
            return false;
        }
        if(projectTime.val()==""){
            alert("请选择项目制作时间");
            projectTime.focus();
            return false;
        }
        return true;
    }
</script>
</body>
</html>
