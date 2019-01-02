<%--
  Created by IntelliJ IDEA.
  User: suneee
  Date: 2018/12/29
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
    <script src="../static/js/bower_components/vue-router/dist/vue-router.js" type="text/javascript"></script>
    <script src="../static/js/vue-resource-1.5.1.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/bower_components/animate.css/animate.css">
    <style type="text/css">
        .router-link-active {
            font-size: 30px;
            color: orange;
            transition: .5s;
        }
    </style>
</head>
<body>
<div id="body">
    <router-link to="/mld">穆拉丁</router-link>
    <router-link to="/aess">阿尔萨斯</router-link>
    <router-view></router-view>
</div>
<template id="mld">
    <div>
        山丘之王<br>
        <router-link to="/mld/skl/001">风暴之锤</router-link>
        <transition enter-active-class="animated rotateIn" leave-active-class="animated rotateOut">
            <router-view></router-view>
        </transition>
    </div>
</template>
<template id="aess">
    <div>
        死亡骑士<br>
        <router-link to="/aess/swcr">死亡缠绕</router-link>
        <transition enter-active-class="animated rotateIn" leave-active-class="animated rotateOut">
            <router-view></router-view>
        </transition>
    </div>
</template>
<template id="skill">
    <div>
    <skill :skill-id="$route.params.id"></skill>
    </div>
</template>
<template id="skillInfo">
    <h1>{{sMsg}}</h1>
</template>
<script type="text/javascript">
    let routes = [{
        path: '/mld', component: {
            template: '#mld',
        },
        children: [
            {
                path: 'skl/:id',
                component: {
                    template: '#skill',
                    components: {
                        skill: {
                            template: '#skillInfo',
                            props:['skillId'],
                            data() {
                                return {
                                    sMsg: ''
                                }
                            },methods: {
                                init() {
                                    this.$http.get('http://127.0.0.1:8888/vue/getSkill/'+this.skillId).then((data)=>{
                                        console.log(data);
                                        this.sMsg = data.data.returnMessage;
                                    })
                                }
                            },
                            mounted() {
                                this.init();
                            },
                            updated() {
                                this.init();
                            }
                        }
                    }
                }
            }
        ]

        // children: [{
        //     path: 'fbzc',
        //     component: {
        //         template: `<h1>扔出一把锤子，对击中的第一个敌人造成110点伤害，并使其昏迷1.25秒。</h1>`
        //     }
        // }]
    }, {
        path: '/aess', component: {
            template: '#aess',
        },
        children: [{
            path: 'swcr',
            component: {
                template: `<h1>对目标敌人造成164点伤害。 可以对自己使用恢复262点生命值。</h1>`
            }
        }]
    }]
    let router = new VueRouter({routes});
    new Vue({
        router,
        el: '#body'
    })
</script>
</body>
</html>
