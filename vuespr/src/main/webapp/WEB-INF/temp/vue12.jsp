<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/23
  Time: 10:28
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
    <leo></leo>
</div>
<script type="text/javascript">
    var a = Vue.extend({
        data() {
          return {
              msg: '这个世界'
          }
        },
        template:'<h1>你好!{{msg}}</h1>'
    });
    Vue.component("leo",a);
    new Vue({
        el:'.container'
    })
</script>
</body>
</html>
