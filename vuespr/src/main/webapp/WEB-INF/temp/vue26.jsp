<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/27
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <test></test>
</div>
<script type="text/javascript">
    let test = require('../component/test')
    new Vue({
        el: '.container',
        components:{test}
    });
</script>
</body>
</html>
