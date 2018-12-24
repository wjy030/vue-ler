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
    <script type="text/x-template" id="test2">
        <h1>你好!{{msg}}</h1>
        <input type="button" value="试试" @click='show2'>
    </script>
</head>
<body>
<div class="container">
    <input type="button" value="我变" @click="change"/>
    <component :is='comp'></component>
</div>
<template id="test1">
    <h1>千变万化!{{msg}}</h1>
</template>
<script type="text/javascript">
    new Vue({
        el:'.container',
        data: {
          fatMsg:'我是你爹',
            comp: 'leo'
        },
        methods: {
            change: function() {
              this.comp = 'mike'
            }
        },
        components: {
            leo: {
                data() {
                    return {
                        msg: '这个世界'
                    }
                },
                methods:{
                  show2() {
                      alert('我弟弟被用了');
                  }
                },
                template:'#test2'
            },
            mike: {
                data() {
                    return {
                        msg: '这个世界'
                    }
                },
                methods:{
                    show2() {
                        alert('我姐姐被用了');
                    }
                },
                template:'#test1'
            }
        }
    })
</script>
</body>
</html>
