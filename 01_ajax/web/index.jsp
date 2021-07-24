<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>ajaxTest</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

    <script>

        $(function () {

            $("#djBtn").click(function (){

                //$("#msg").html(123)

                /*
                    异步（默认）：两根线程
                    同步：一根线程，从上而下依次执行（表单验证）
                 */
                $.ajax({
                    url:"myServlet01",//访问后台servlet的url
                    //data: "key=value",
                    type:"get",
                    dataType:"text",
                    async:false,
                    success: function (data){//回调函数
                        //data 从后台响应回来的数据
                        $("#msg").html(data)
                    }

                })

                alert(123);
            })
        })

    </script>
</head>
<body>

<button id="djBtn">点击</button>

<br/>
<br/>

<div id="msg" style="width: 300px; height: 300px; background: deeppink">

</div>

<br/>
<br/>

<div style="width: 300px; height: 300px; background: deeppink">
    123321123
</div>

</body>
</html>
