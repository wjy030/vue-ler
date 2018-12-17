<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/15
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" type="text/javascript"></script>
</head>
<body>
<div id="main">
    <button v-on:click="show">显隐</button>
    <button @click="bis">打印</button>
<div v-show="dis">
{{msg}}
</div>
<div v-for="v in arr">{{$index}}</div>
    <input @keydown.65.enter="ctx" type="text" v-model="first">
    <input type="text" v-model="second">
</div>
    <script type="text/javascript">
    new Vue({
        el: '#main',
        data: {
            msg:'12312312',
            dis:'true',
            first:'',
            second:''
        },
        methods: {
            show:function(){
                this.dis = !this.dis;
            },
            bis:function () {
                 alert(event.clientX+"--"+"--"+event.clientY);
            },
            ctx:function () {
                alert("1111");
            }
        }
    });
</script>

</body>
</html>