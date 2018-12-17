<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/16
  Time: 1:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" type="text/javascript"></script>
</head>
<body>
<div id="main" v-once>
    <input type="button" value="按钮" @click="push"/>
    <span v-html="msg"></span>
    <img :src="pic">
</div>
<script type="text/javascript">
    new Vue({
        el:'#main',
        data:{
            msg:'点火',
            pic:'https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/logo_white_fe6da1ec.png'
        },
        methods:{
            push:function () {
                this.msg = '<div>千变万化</div>';
            }
        }
    })
</script>
</body>
</html>
