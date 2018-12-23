<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/22
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
    <style type="text/css">
        #wrap {
            width: 400px;
            height: 300px;
            border: 1px black solid;
            position: relative;
            overflow: hidden;
        }
        #wrap>div {
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .tis-transition {
            transition: 2s linear;
        }
        .tis-enter {
            /*opacity: 0;*/
            transform: translateX(-400px);
        }
        .tis-leave {
            /*opacity: 0;*/
            transform: translateX(400px);
        }
    </style>
</head>
<body>
    <div class="container">
        <input type="button" v-for="val in btn" :value="val" @click="add($index)">
        <div id="wrap">
            <div v-for="y in dv" :style="{background:y}" v-show="changed($index)" transition="tis">{{y}}</div>
        </div>
    </div>
    <script type="text/javascript">
        new Vue({
            el:".container",
            data:{
                btn:['天','地','人'],
                dv:['red','yellow','blue'],
                index:0,
                allow:false
            },
            methods:{
                add:function (idx) {
                    if(this.allow) return;
                    this.allow = true;
                    this.index = idx;
                    let _this = this;
                    setTimeout(function () {
                        _this.allow = false;
                    },2000);
                },
                changed:function (idx) {
                    console.log(this.index == idx ? true: false)
                    return this.index == idx ? true: false;
                }
            }
        })
    </script>
</body>
</html>
