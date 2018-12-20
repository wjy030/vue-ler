<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/20
  Time: 10:35
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
   <ul>
       <li v-for="i in arr" :key="i.id">{{i.name}}</li>
   </ul>
    <div :key="obj.id">{{obj.p}}</div>
</div>
<script type="text/javascript">
    let a = new Vue({
        el:".container",
        data:{
            msg:"期刊",
            arr:[{name:"张三",id:1},{name:"李四",id:2},{name:"王五",id:3},{name:"张三",id:4},{name:"赵六",id:5}],
            obj:{
                p:"hello",
                id:1
            }
        }

    })
    a.$set(a.obj,"txt","aaa");
    a.$data.obj.txt = "bbb";
</script>
</body>
</html>
