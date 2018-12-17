<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/16
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
    <script src="../static/js/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../static/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.css">
</head>
<body>
<div class="container">
    <div class="modal fade" tabindex="-1" role="dialog" id="del">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">确认栏</h4>
                </div>
                <div class="modal-body">
                    <p>确认要删除么&hellip;</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" @click="del">确认</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <form class="form">
        <div class="form-group">
            <label>姓名</label>
            <input type="text" v-model="name" class="form-control">
        </div>
        <div class="form-group">
            <label>年龄</label>
            <input type="number" v-model="age" class="form-control">
        </div>
    </form>
    <input type="button" value="新增" class="btn btn-primary btn-default" @click="add">
    <input type="button" value="按年齡排序" class="btn btn-primary btn-default" @click="ageSort">
    <table class="table table-bordered table-hover text-center" style="margin-top: 10px">
        <thead>
        <tr>
            <td>序号</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>删除</td>
        </tr>
        </thead>
        <tbody>
        <tr v-for="(val,index) in list">
            <td>{{index+1}}</td>
            <td>{{val.name}}</td>
            <td>{{val.age}}</td>
            <td><input type="button" value="删除" data-toggle="modal" data-target="#del" @click="idx = index"
                       class="btn-default btn btn-danger"></td>
        </tr>
        <tr v-show="list.length?false:true">
            <td colspan="4">请添加数据</td>
        </tr>
        <tr v-show="list.length?true:false">
            <td colspan="4">
                <input type="button" value="全部删除" @click="allDel" class="btn btn-default btn-danger"/>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    new Vue({
        el: '.container',
        data: {
            age: '',
            name: '',
            idx: 0,
            list: []
        },
        methods: {
            add: function () {
                this.list.push({age: this.age, name: this.name});
            },
            del: function () {
                this.list.splice(this.idx, 1);
            },
            ageSort: function () {
                this.list.sort(function (per1, per2) {
                    return per1.age - per2.age;
                })
            },
            allDel:function () {
                this.list = [];
            }
        }
    })
</script>
</body>
</html>
