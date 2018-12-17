<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/16
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" type="text/javascript"></script>
    <style type="text/css">
        .myDiv{
            width: 100px;
            height: 100px;
            background: red;}
        .myShadow{
            box-shadow: 0 0 15px black;
        }
    </style>
</head>
<body>
<div id="main">
<button @click="change">按键</button>
    <div :class="'myDiv myShadow'"></div>
</div>
<script type="text/javascript">
    new Vue({
        el:"#main",
        data:{
            myStyle:{
                width: '200px',
                height: '200px',
                background: 'red',
                transition: '.5s'
            },
            myBlack:{
                background:'black'
            }
        },
        methods:{
            change:function () {
                this.myStyle.width = '400px';
                this.myStyle.height= '400px';
                this.myStyle.background='green';
            }
        }
    })
</script>
</body>
</html>
