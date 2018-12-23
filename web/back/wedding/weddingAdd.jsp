<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加婚礼视频</title>
    <link href="${pageContext.request.contextPath}/js/uploadify/uploadify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#picUpload").uploadify({
                'fileObjName': 'picUpload',
                'fileTypeDesc': '*.jpg;*.gif;*.jpeg;*.png;*.bmp;',
                'uploadLimit': 1,
                'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
                'uploader': '${pageContext.request.contextPath}/imageUpload?type=weddingIcon',
                'onUploadSuccess': function (file, data, response) {
                    var picPath = $("#pic").val();
                    picPath += data;
                    $("#pic").attr("value", picPath);
                    $("#iconPic").append("<img src=" + "${pageContext.request.contextPath}/" + data + ">");
                }
            });
        });
    </script>
</head>
<body>

    <form action="${pageContext.request.contextPath}/wedding/add.do" method="post" class="form-horizontal" onsubmit="return validateForm()"
          id="theForm">
        <div class="control-group">
            <label class="control-label" for="title">视频名称</label>

            <div class="controls">
                <input type="text" name="title" id="title" class="input-xxlarge" placeholder="视频名称">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="type">视频类型</label>

            <div class="controls">
                <select name="type" id="type">
                    <option value="1">爱情MV</option>
                    <option value="2">席前回放</option>
                    <option value="3">婚礼跟拍</option>
                    <option value="4">视频剪辑</option>
                </select>
            </div>
        </div>

        <div class="control-group" id="picDiv">
            <label class="control-label" for="picUpload">视频封面图（请上传长宽比例1：1的图片）</label>
            <input type="hidden" id="pic" name="pic">

            <div class="controls">
                <div id="fileQueue"></div>
                <input type="file" name="picUpload" id="picUpload"/>
            </div>
            <div class="controls" id="iconPic"></div>
        </div>

        <div class="control-group">
            <label class="control-label" for="video">视频路径</label>

            <div class="controls">
                <input type="text" name="video" id="video" class="input-xxlarge" placeholder="视频路径">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="position">排序</label>

            <div class="controls">
                <input type="text" name="position" id="position" class="input-mini" placeholder="如1,2,3,4...">
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