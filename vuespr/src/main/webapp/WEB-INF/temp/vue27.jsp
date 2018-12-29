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
    <script src="../static/js/vue.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <first></first>
        <second></second>
        <third></third>
    </div>
    <template id="aaa">
        <div>
            <input type="button" value="改变" @click="change">
            <h2>{{myMsg}}</h2>
        </div>
    </template>
    <template id="bbb">
        <div>
            <input type="button" value="改变" @click="change">
            <h2>{{myMsg}}</h2>
        </div>
    </template>
    <template id="ccc">
        <div>
            <input type="button" value="改变" @click="change">
            <h2>{{myMsg}}</h2>
        </div>
    </template>
    <script type="text/javascript">
        let vm = new Vue();
        new Vue({
            el: ".container",
            components: {
                first: {
                    template:"#aaa",
                    data() {
                        return{
                            heart:'我是aaa',
                            myMsg:'我是aaa'
                        }
                    },
                    methods: {
                        change() {
                            vm.$emit('common-msg',this.heart)
                        }
                    },
                    mounted() {
                        vm.$on('common-msg',(data) => {
                            this.myMsg = data;
                        })
                    }
                },
                second: {
                    template:"#bbb",
                    data() {
                        return{
                            heart:'我是bbb',
                            myMsg:'我是bbb'
                        }
                    },
                    methods: {
                        change() {
                            vm.$emit('common-msg',this.heart)
                        }
                    },
                    mounted() {
                        vm.$on('common-msg',(data) => {
                            this.myMsg = data;
                        })
                    }
                },
                third: {
                    template:"#ccc",
                    data() {
                        return{
                            heart:'我是ccc',
                            myMsg:'我是ccc'
                        }
                    },
                    methods: {
                        change() {
                            vm.$emit('common-msg',this.heart)
                        }
                    },
                    mounted() {
                        vm.$on('common-msg',(data) => {
                            this.myMsg = data;
                        })
                    }
                }
            }
        })
    </script>
</body>
</html>
