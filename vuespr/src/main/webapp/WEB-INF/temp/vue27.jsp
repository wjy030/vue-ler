<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/29
  Time: 9:17
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
        <h1>{{msg}}</h1>
        <child :c-msg.sync="msg"></child>
        <template id="my">
            <input type="button" value="改变" @click="change">
            <h2>{{myMsg}}</h2>
        </template>
    </div>
    <script type="text/javascript">
        new Vue({
            el: ".container",
            data: {
                msg:'我是父组件'
            },
            components: {
                child: {
                    template:"#my",
                    props:['cMsg'],
                    data() {
                        return {
                            myMsg:''
                        }
                    },
                    methods: {
                        change() {
                            this.cMsg = '我是子组件';
                            this.myMsg = this.cMsg;
                        }
                    },
                    ready() {
                        this.myMsg = this.cMsg;
                    }
                }
            }
        })
    </script>
</body>
</html>
