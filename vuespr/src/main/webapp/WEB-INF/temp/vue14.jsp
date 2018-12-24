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
    <script src="../static/js/vue1.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <leo :fp="fatMsg"></leo>
</div>
<template id="test1">
    <input type="button" value="吞声" @click="show2">
    <h1>千变万化!{{fp}}</h1>
    <the-son :sp="fp"></the-son>
</template>
<template id="test2">
    <h1>儿子来了!{{sp}}</h1>
</template>
<script type="text/javascript">
    new Vue({
        el:'.container',
        data: {
          fatMsg:'我是你爹'
        },
        components: {
            leo: {
                props:['fp'],
                methods:{
                  show2() {
                      alert(this.fp);
                  }
                },
                template:'#test1',
                components: {
                    theSon: {
                        props:['sp'],
                        template:'#test2'
                    }
                }
            }
        }
    })
</script>
</body>
</html>
