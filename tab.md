# 实现tab功能
    <head>
        <title>Title</title>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" type="text/javascript"></script>
        <style type="text/css">
            .myDiv{
                width: 300px;
                height: 100px;
                background: blueviolet;}
            input.active{
                background: red;
            }
        </style>
    </head>
    <body>
    <div id="main">
        <input type="button" v-for="(val,index) in btnTx" :class='index==idx?"active":""' :value="val" @click="change(index)">
        <div class="myDiv" v-for="(val,index) in divTx" v-show='index==idx?true:false'>{{val}}</div>
    </div>
    <script type="text/javascript">
        new Vue({
            el:"#main",
            data:{
                idx:0,
                btnTx:['天','地','人'],
                divTx:['床前明月光','疑是地上霜','举头望明月']
            },
            methods:{
                change:function (newIdx) {
                    this.idx = newIdx;
                }
            }
        })
    </script>
