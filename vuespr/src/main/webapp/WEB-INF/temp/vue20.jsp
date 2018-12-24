<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/24
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
</head>
<body>
<template id="myson">
    <div>
        <input type="text" v-model="smsg">
        <input type="button" value="提交" @click="toFat">
    </div>
</template>
<div class="container">
    <son @son="getSon"></son>
    {{fmsg}}<br>
    {{smsg}}
</div>
<script type="text/javascript">
    new Vue({
        el:'.container',
        data: {
            fmsg: '来自遥远的: ',
            smsg:''
        },
        methods: {
          getSon(msg) {
              this.smsg = msg;
          }
        },
        components: {
            son: {
                template: "#myson",
                data() {
                    return {
                        smsg:''
                    }
                },
                methods: {
                    toFat() {
                        this.$emit('son',this.smsg)
                    }
                }
            }
        }
    })
</script>
</body>
</html>
