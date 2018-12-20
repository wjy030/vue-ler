<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/19
  Time: 9:27
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
    <input class="text" v-model="msg"><br>
    {{msg  | extLog 1 2}}<br>
    
</div>
<script type="text/javascript">
    Vue.filter('extLog',function (value,para1,para2) {
        console.log(para1+"|"+para2);
        return value+"$";
    })
    Vue.filter('twoLog',{
        read: function (data) {
            console.log("read")
            return "read:" + data;
        },
        write: function (newValue,oldValue) {
            console.log("write"+" "+ newValue+" "+oldValue)
            return "write:" + newValue;
        }
    })
    new Vue({
        el:'.container',
        data:{
            msg:''
        },
        filters: {
            extLog: function (value,para1,para2) {
                console.log(para1+"|"+para2);
                return value+"$";
            }
        }
    })
</script>
</body>
</html>
