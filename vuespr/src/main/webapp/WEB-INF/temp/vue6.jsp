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
    <script src="../static/js/vue-resource-1.5.1.js" type="text/javascript"></script>
    <script src="../static/js/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../static/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.css">
</head>
<body>
<div class="container">
    <form>
        <div class="form-group">
            <label>用户名</label>
            <input type="text" v-model="username" class="form-control">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" v-model="password" class="form-control">
        </div>
    </form>
    <input type="button" value="提交" @click="submit">
    <input type="text" v-model="word" @input="search"/>
    <ul>
        <li v-for="i in list">{{i}}</li>
    </ul>
</div>
<script type="text/javascript">
    new Vue({
        el: '.container',
        data: {
            word:'',
            list:[],
            username: '',
            password: ''
        },
        methods: {
            submit: function () {
                this.$http.post("/submit/doG",
                    {username: this.username, password: this.password},{emulateJSON:true}).then(function (ret) {
                    debugger;
                    if (ret.data.returnCode == 1) {
                        alert(ret.data.data.message);
                    } else {
                        alert(ret.data.data.error);
                    }
                })
            },
            search: function () {
                this.$http.jsonp("https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su",{params:{wd:this.word},jsonp:'cb'}).then(function (res) {
                    this.list = res.data.s;
                })
            }
        }
    })
</script>
</body>
</html>
