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
<a v-link="{path:'/in'}">内功</a>
<a v-link="{path:'/sword'}">剑法</a>
<router-view></router-view>
<template id="in">
    <h1>小无相功</h1>
    <h1>九阳神功</h1>
</template>
<template id="sword">
    <h1><a v-link="{path:'/sword/pixie'}">辟邪剑谱</a></h1>
    <h1><a v-link="{path:'/sword/dugu'}">独孤九剑</a></h1>
    <router-view></router-view>
</template>
<template id="pixie">
    <h2>欲练此功,必先自宫</h2>
</template>
<template id="dugu">
    <h2>一剑破万法</h2>
</template>
<script type="text/javascript">
    let nei =  Vue.extend({
        template:'#in'
    });
    let sword = Vue.extend({
        template:'#sword'
    })
    let router = new VueRouter();
    router.map({
        in:{
            component:nei
        },
        sword:{
            component:sword,
            subRoutes: {
                'pixie':{
                    component:{
                        template:'#pixie'
                    }
                },
                'dugu':{
                    component: {
                        template:'#dugu'
                    }
                }
            }
        }
    })
    let app = Vue.extend();
    router.start(app,'body');
    router.redirect({
        '/':'in'
    });
</script>
</body>
</html>
