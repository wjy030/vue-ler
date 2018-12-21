# vue动画版本
## 1.0 版本
### 定义动画名
transition='自定义的名字'  
例:  
```
<div v-show="show" transition="my">
```
### 定义动画style
.自定义的名字-transition 显示时的状态  
.自定义的名字-leave 消失时的动画  
.自定义的名字-enter 进入时到显示时的过度动画  
例:
```
<style type="text/css">
    div {
        width: 100px;height: 100px;
    }
    .my-transition{
        /*opacity:1;*/
        opacity: 0.3;
        /*transform: translate(0,0);*/
        transition: 1.2s;
        background: red;
    }
    .my-leave
    {
        opacity: 0;
        transform: translateX(90px);
        background: blue;
    }
    .my-enter
    {
        opacity: 0;
        transform: translateX(90px);
        background: blue;
    }
</style>
```
### 动态绑定
``<div v-if="show" :transition="transitionName">hello</div>``  
transitionName可以是data的变量名
```
new Vue({
  el: '...',
  data: {
    show: false,
    transitionName: 'fade'
  }
})
```
### 钩子函数
```
Vue.transition('自定义的名字', {
  beforeEnter: function (el) {
    el.textContent = 'beforeEnter'
  },
  enter: function (el) {
    el.textContent = 'enter'
  },
  afterEnter: function (el) {
    el.textContent = 'afterEnter'
  },
  enterCancelled: function (el) {
    // handle cancellation
  },
  beforeLeave: function (el) {
    el.textContent = 'beforeLeave'
  },
  leave: function (el) {
    el.textContent = 'leave'
  },
  afterLeave: function (el) {
    el.textContent = 'afterLeave'
  },
  leaveCancelled: function (el) {
    // handle cancellation
  }
})
```
### 自定义过渡类名
``<div v-show="ok" class="animated" transition="bounce">Watch me bounce</div>``  
可以全局注册
```
Vue.transition('bounce', {
  enterClass: 'bounceInLeft',
  leaveClass: 'bounceOutRight'
})
```
也可以内部注册
```
new Vue({
    el:'.container',
    data:{
        show:true,
        msg:'hello world'
    },
    methods:{
        changed: function () {
            this.show = !this.show;
        }
    },
    transition: {
        bounce: {
            enterClass: 'bounceInLeft',
            leaveClass: 'bounceOutRight'
        }
    }
})
```
