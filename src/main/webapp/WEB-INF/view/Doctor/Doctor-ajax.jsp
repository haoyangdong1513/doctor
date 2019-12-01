<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
    $(function () {
        jump(1);
    });
    function jump(index){
        var pageSizeSelect =$("#pageSizeSelect").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/doctor/toDoctorList",
            type:"post",
            dataType:"html",
            data:{"pageIndex":index,"pageSize":pageSizeSelect,"sectionId":${sectionId}},
            success:function(result){
                $("#div1").html(result);
            },
            error:function(){
                alert("查询错误");
            }
        });
    }
</script>
<body>
        <div id="div1"></div>
</body>
</html>
