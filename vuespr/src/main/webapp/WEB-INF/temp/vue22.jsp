<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/26
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
    <style type="text/css">
        *{padding: 0px}
        .outNode {
            background-color: red;
            position: absolute;
            width: 520px;
            height: 300px;
            border: 1px solid black;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
            overflow: hidden;
        }
        .outNode .imgNode {
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .selectNode {
            position: absolute;
            height: 16px;
            left: 50%;
            bottom: 15px;
            transform: translate(-50%);
            border-radius: 6.5px;
            background: rgb(255,255,255,0.3);
        }
        .selectNode li {
            list-style-type: none;
            background-color: blue;
            border-radius: 50%;
            width: 10px;
            height: 10px;
            margin-top: 3px;
            margin-left: 3px;
            margin-right: 3px;
            float: left;
            cursor: pointer;
        }
        .selectNode li.active {
            background: #4cae4c;
        }
        .my-enter-active, .my-leave-active, .your-enter-active, .your-leave-active {
            transition: .6s linear;
        }
        .my-enter {
            transform: translateX(520px);
        }
        .my-leave-to {
            transform: translateX(-520px);
        }

        .your-enter {
            transform: translateX(-520px);
        }
        .your-leave-to {
            transform: translateX(520px);
        }
    </style>
</head>
<body>

<div class="body" style="width: 100%;height: 100%;position: relative">
    <div class="outNode">
        <transition-group :name="sty">
        <div class="imgNode" v-for="(i,idx) in img" :style='{background:"url("+i+")"}' v-show="idx==index"
             :key="i"></div>
        </transition-group>
            <ul class="selectNode" :style='{width: img.length*16+"px"}'>
            <li v-for="(i,idx) in img" @click="change(idx)" :class='index == idx ? "active" : ""'></li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    new Vue({
        el: '.body',
        data: {
            tran: false,
            sty:'my',
            index:0,
            img:['../static/img/1.jpeg','../static/img/2.jpg','../static/img/3.jpg','../static/img/4.jpg']
        },
        methods: {
            change(idx) {
                if(this.index == idx)
                    return;
                if(this.tran)return;
                this.tran = true;
                if(this.index > idx)
                    this.sty = 'my';
                else
                    this.sty = "your";
                this.index = idx;
                let _this = this;
                setTimeout(function () {
                    _this.tran = false;
                },600)
            }
        }
    })
</script>
</body>
</html>
