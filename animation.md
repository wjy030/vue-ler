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
## 2.0版本改动
### 定义动画名
```
<transition name="fade">
    <p v-if="show">hello</p>
  </transition>
```
name有默认值v
### 定义动画style
1. fade-enter：定义进入过渡的开始状态。在元素被插入之前生效，在元素被插入之后的下一帧移除。
2. fade-enter-active：定义进入过渡生效时的状态。在整个进入过渡的阶段中应用，在元素被插入之前生效，在过渡/动画完成之后移除。这个类可以被用来定义进入过渡的过程时间，延迟和曲线函数。
3. fade-enter-to: (2.1.8版及以上) 定义进入过渡的结束状态。在元素被插入之后下一帧生效 (与此同时 fade-enter 被移除)，在过渡/动画完成之后移除。
4. fade-leave: 定义离开过渡的开始状态。在离开过渡被触发时立刻生效，下一帧被移除。
5. fade-leave-active：定义离开过渡生效时的状态。在整个离开过渡的阶段中应用，在离开过渡被触发时立刻生效，在过渡/动画完成之后移除。这个类可以被用来定义离开过渡的过程时间，延迟和曲线函数。
6. fade-leave-to: (2.1.8版及以上) 定义离开过渡的结束状态。在离开过渡被触发之后下一帧生效 (与此同时 fade-leave 被删除)，在过渡/动画完成之后移除。
### 自定义过渡类名
```
<transition
    name="custom-classes-transition"
    enter-active-class="animated tada"
    leave-active-class="animated bounceOutRight"
  >
```
总共可以定义以下几种:  
enter-class  
enter-active-class  
enter-to-class (2.1.8+)  
leave-class  
leave-active-class  
leave-to-class (2.1.8+)  
优先级高于普通类名
### 显性定制过渡时间
``<transition :duration="1000">...</transition>``  
``<transition :duration="{ enter: 500, leave: 800 }">...</transition>``  
### 钩子函数
```
<transition
  v-on:before-enter="beforeEnter"
  v-on:enter="enter"
  v-on:after-enter="afterEnter"
  v-on:enter-cancelled="enterCancelled"

  v-on:before-leave="beforeLeave"
  v-on:leave="leave"
  v-on:after-leave="afterLeave"
  v-on:leave-cancelled="leaveCancelled"
>
  <!-- ... -->
</transition>
```
```
methods: {
  // --------
  // 进入中
  // --------

  beforeEnter: function (el) {
    // ...
  },
  // 当与 CSS 结合使用时
  // 回调函数 done 是可选的
  enter: function (el, done) {
    // ...
    done()
  },
  afterEnter: function (el) {
    // ...
  },
  enterCancelled: function (el) {
    // ...
  },

  // --------
  // 离开时
  // --------

  beforeLeave: function (el) {
    // ...
  },
  // 当与 CSS 结合使用时
  // 回调函数 done 是可选的
  leave: function (el, done) {
    // ...
    done()
  },
  afterLeave: function (el) {
    // ...
  },
  // leaveCancelled 只用于 v-show 中
  leaveCancelled: function (el) {
    // ...
  }
}
```
