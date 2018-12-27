# vue1.0 路由
1.0使用的vue_router版本为0.7.13
```
<body>
<a v-link="{path:'/myli'}">李</a>
<a v-link="{path:'/mymo'}">魔</a>
<router-view></router-view>
<template id="li">
    <h1>我是李</h1>
</template>
<template id="mo">
    <h1>我是魔</h1>
</template>
<script type="text/javascript">
    let li =  Vue.extend({
        template:'#li'
    });
    let mo = Vue.extend({
        template:'#mo'
    })
    let router = new VueRouter();
    router.map({
        myli:{
            component:li
        },
        mymo:{
            component:mo
        }
    })
    let app = Vue.extend();
    router.start(app,'body');
    router.redirect({
        '/':'mymo'
    });
</script>
</body>
```
## 使用步骤
1. 创建组件
```
let li =  Vue.extend({
    template:'#li'
});
let mo = Vue.extend({
    template:'#mo'
})
```
2. 创建路由
```
let router = new VueRouter();
```
3. 路由映射
```
router.map({
    myli:{  //myli就是指向li的地址,还可以写成'myli','/myli'
        component:li
    },
    mymo:{  //mymo就是指向mo的地址
        component:mo
    }
})
```
调用router的map方法映射路由，每条路由以key-value的形式存在，key是路径，value是组件。
例如：'/home'是一条路由的key，它表示路径；{component: Home}则表示该条路由映射的组件。
4. 路由启动
```
let app = Vue.extend();
    router.start(app,'body');
```
路由器的运行需要一个根组件，比如router.start(App, '#app') 表示router会创建一个App实例，并且挂载到#app元素。
注意：使用vue-router的应用，不需要显式地创建Vue实例，而是调用start方法将根组件挂载到某个元素。
## 实现跳转
``<a v-link="{path:'/myli'}">李</a>`` v-link指令指定跳转的路径  
``<router-view></router-view>``在这个位置渲染匹配的组件
# 实现重定向
```
router.redirect({
        '/':'mymo'
    });
```
对'/'根路径重定向,实现默认页面的指定
# 路由嵌套
```
<body>
<a v-link="{path:'/in'}">内功</a>
<a v-link="{path:'/sword'}">剑法</a>
<router-view></router-view>
<template id="in">
    <h1>小无相功</h1>
    <h1>九阳神功</h1>
</template>
<template id="sword">
    <h1><a v-link="{path:'/sword/pixie'}">辟邪剑谱</a></h1>
    <h1><a v-link="{path:'/sword/dugu'}">独孤九剑</a></h1>
    <router-view></router-view>
</template>
<template id="pixie">
    <h2>欲练此功,必先自宫</h2>
</template>
<template id="dugu">
    <h2>一剑破万法</h2>
</template>
<script type="text/javascript">
    let nei =  Vue.extend({
        template:'#in'
    });
    let sword = Vue.extend({
        template:'#sword'
    })
    let router = new VueRouter();
    router.map({
        in:{
            component:nei
        },
        sword:{
            component:sword,
            subRoutes: {
                'pixie':{
                    component:{
                        template:'#pixie'
                    }
                },
                'dugu':{
                    component: {
                        template:'#dugu'
                    }
                }
            }
        }
    })
    let app = Vue.extend();
    router.start(app,'body');
    router.redirect({
        '/':'in'
    });
</script>
</body>
```
## 子路由映射
```
sword:{
    component:sword,
    subRoutes: {
        'pixie':{
            component:{
                template:'#pixie'
            }
        },
        'dugu':{
            component: {
                template:'#dugu'
            }
        }
    }
}
```
在映射中使用subRoutes定义子路由映射
## 实现跳转
``<a v-link="{path:'/sword/dugu'}">独孤九剑</a>``v-link中指定路径
```
<template id="sword">
    <h1><a v-link="{path:'/sword/pixie'}">辟邪剑谱</a></h1>
    <h1><a v-link="{path:'/sword/dugu'}">独孤九剑</a></h1>
    <router-view></router-view>
</template>
```
在要渲染的位置使用``<router-view></router-view>``
# 子路由参数传递
``<a v-link="{path:'/sword/content/002?disc=一剑破万法'}">独孤九剑</a>``可以在path中传参数值002,get参数中传参数disc
## path参数解析
```
subRoutes: {
    'content/:id':{
        component:{
            template:'#content'
        }
    }
}
```
通过**:参数名**将path中的参数值接收到指定参数中
## $route变量
```
<template id="content">
    <h2>{{$route.params.id}}</h2>
    <h2>{{$route.query.disc}}</h2>
</template>
```
子组件中可以使用$route变量,path中的参数会被放入$route.params中,get参数会被放入$route.query中
## 样例:通过filter实现跳转时onload事件的功能
```
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
    <script src="../static/js/vue-resource-1.5.1.js" type="text/javascript"></script>
    <script src="../static/js/vue-router0713.js" type="text/javascript"></script>
</head>
<body>
<a v-link="{path:'/in'}">内功</a>
<a v-link="{path:'/sword'}">剑法</a>
<router-view></router-view>
<template id="in">
    <h1>小无相功</h1>
    <h1>九阳神功</h1>
</template>
<template id="sword">
    <h1><a v-link="{path:'/sword/content/001?disc=欲练此功,必先自宫'}">辟邪剑谱</a></h1>
    <h1><a v-link="{path:'/sword/content/002?disc=一剑破万法'}">独孤九剑</a></h1>
    <router-view></router-view>
</template>
<template id="content">
    <div>
    <div id="cat">
    <h2>{{$route | show}}</h2>
    <h2>{{disc}}</h2>
    </div>
    </div>

</template>
<script type="text/javascript">
    let nei =  Vue.extend({
        template:'#in'
    });
    let sword = Vue.extend({
        template:'#sword'
    })
    let router = new VueRouter();
    router.map({
        in:{
            component:nei
        },
        sword:{
            component:sword,
            subRoutes: {
                'content/:id':{
                    component:{
                        template:'#content',
                        data() {
                            return {
                                id:'',
                                disc:''
                            }
                        },
                        filters: {
                            show: function (val) {
                                //此处可以访问后台获取数据
                                this.id = val.params.id;
                                this.disc = val.query.disc;
                                return this.id;
                            }
                        }
                    }
                }
            }
        }
    })
    let app = Vue.extend();
    router.start(app,'body');
    router.redirect({
        '/':'in'
    });
</script>
</body>
```
