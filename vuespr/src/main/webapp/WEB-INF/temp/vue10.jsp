<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/20
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <div v-leo-do="color"></div>
</div>
<script type="text/javascript">
    Vue.directive('leoDo',function (el,binding) {
        console.log(el);
        console.log(binding);
        el.style.background = binding.value;
        el.style.width = '100px';
        el.style.height = '200px';
    })
    new Vue({
        el:".container",
        data:{
            color:'black'
        }
    })
</script>
</body>
</html>
