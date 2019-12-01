<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/31
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
                url:"<%=request.getContextPath()%>/section/toSectionList",
                type:"post",
                dataType:"html",
                data:{"pageIndex":index,"pageSize":pageSizeSelect},
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
