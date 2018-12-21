<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/21
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
    <style type="text/css">
        div {
            width: 100px;height: 100px;
        }
        .my-transition{
            /*opacity:1;*/
            opacity: 0.3;
            /*transform: translate(0,0);*/
            transition: 1.2s;
            background: red;
        }
        .my-leave
        {
            opacity: 0;
            transform: translateX(90px);
            background: blue;
        }
        .my-enter
        {
            opacity: 0;
            transform: translateX(90px);
            background: blue;
        }
    </style>
</head>
<body>
<div class="container">
    <button @click="changed">改变</button>
    <div v-show="show" transition="my">

    </div>
</div>
<script type="text/javascript">
    new Vue({
        el:'.container',
        data:{
            show:true,
            msg:'hello world'
        },
        methods:{
            changed: function () {
                this.show = !this.show;
            }
        },
        transition: {
            bounce: {
                enterClass: 'bounceInLeft',
                leaveClass: 'bounceOutRight'
            }
        }
    })
</script>
</body>
</html>
