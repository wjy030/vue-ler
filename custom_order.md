# vue自定义指令
```
<div class="container">
    <div v-leo="color"></div>
</div>
<script type="text/javascript">
    Vue.directive('leo',function (el,binding) {
        console.log(el);
        console.log(binding);
        el.style.background = binding.value;
        el.style.width = '100px';
        el.style.height = '200px';
    })
    new Vue({
        el:".container",
        data:{
            color:'black'
        }
    })
</script>
```
## 指令定义 
Vue.directive('自定义的名字',function(el,binding){})  
名字中有大写字母时如doTh 则使用指令时要用 v-do-th
### el参数
指令所属的原生dom对象标签 <div v-leo="color"></div>  
### binding
一个obj  
binding.value就是color的值
binding.name就是leo
## 用钩子函数
```
Vue.directive('lang', { //五个注册指令的钩子函数
      bind: function() { //被绑定
          console.log('1 - bind');
      },
      inserted: function() { //绑定到节点
          console.log('2 - inserted');
      },
      update: function() { //组件更新
          console.log('3 - update');
      },
      componentUpdated: function() { //组件更新完成
          console.log('4 - componentUpdated');
      },
      unbind: function() { //解绑
          console.log('5 - bind');
      }
  })
 ```
1. bind:只调用一次，指令第一次绑定到元素时调用，用这个钩子函数可以定义一个绑定时执行一次的初始化动作。
2. inserted:被绑定元素插入父节点时调用（父节点存在即可调用，不必存在于document中）。
3. update:被绑定于元素所在的模板更新时调用，而无论绑定值是否变化。通过比较更新前后的绑定值，可以忽略不必要的模板更新。
4. componentUpdated:被绑定元素所在模板完成一次更新周期时调用。
5. unbind:只调用一次，指令与元素解绑时调用。
