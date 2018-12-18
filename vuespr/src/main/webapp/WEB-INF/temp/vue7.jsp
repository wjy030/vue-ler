<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/17
  Time: 12:59
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
   <input type="text" v-model="a" @input="d=a">+
    <input type="text" v-model="b">
    c: {{c}}<br>
    d: {{d=a}}<br>
    e: {{e}}
</div>
<script type="text/javascript">
    var x = new Vue({
        el: '.container',
        data: {
            a:'',
            b:'',
            e:''
        },
        computed: {
            c:function () {
                return Number(this.a)+Number(this.b);
            },
            d:{
                get:function () {
                    return Number(this.a)*Number(this.b);
                },
                set:function (num) {
                    this.e = num+1;
                }
            }
        },
        methods:{
            to:function () {
                alert("*******");
            }
        }
    })
    x.d = 4;
    x.$watch("a",function () {
        alert(x.a);
    })
</script>
</body>
</html>
