<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/29
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/bower_components/animate.css/animate.css">
    <style type="text/css">
        .box {
            width: 100px;
            height: 100px;
            background-color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <button @click="change">变化</button>
    <transition enter-active-class="bounceInRight animated" leave-active-class="bounceOutRight animated">
        <div class="box" v-show="show" ></div>
    </transition>
</div>
<script type="text/javascript">
    new Vue({
        el: '.container',
        data: {
            show:true
        },
        methods: {
           change() {
                this.show = !this.show;
            }
        }
    })
</script>
</body>
</html>
