<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/27
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
    <script src="../static/js/vue-router0713.js" type="text/javascript"></script>
</head>
<body>
<a v-link="{path:'/myli'}">李</a>
<a v-link="{path:'/mymo'}">魔</a>
<router-view></router-view>
<template id="li">
    <h1>我是李</h1>
</template>
<template id="mo">
    <h1>我是魔</h1>
</template>
<script type="text/javascript">

    let li =  Vue.extend({
        template:'#li'
    });
    let mo = Vue.extend({
        template:'#mo'
    })
    let router = new VueRouter();
    router.map({
        myli:{
            component:li
        },
        mymo:{
            component:mo
        }
    })
    let app = Vue.extend();
    router.start(app,'body');
    router.redirect({
        '/':'mymo'
    });
</script>
</body>
</html>
