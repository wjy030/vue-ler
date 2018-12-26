<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/26
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
    <style type="text/css">
        #box{
            width: 200px;
            height: 200px;
            left: 50%;
            top: 50%;
            margin-left: -100px;
            margin-top: -100px;
            border: 1px solid black;
            position: absolute;
        }
    </style>
</head>
<body>
<div id="box" v-shadow></div>
<script type="text/javascript">
    Vue.directive('shadow',function () {
        let _this = this;
        document.addEventListener("mousemove", function (e) {
            console.log(e.clientX+" "+e.clientY);
            let sideX = 30-60*e.clientX/innerWidth;
            let sideY = 30-60*e.clientY/innerHeight;
            _this.el.style.boxShadow = sideX+'px '+sideY+'px 30px 0px black'
        })
    });
new Vue({
    el:'body'
})
</script>
</body>
</html>
