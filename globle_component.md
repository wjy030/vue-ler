# vue全局组件
```
<body>
<div class="container">
    <leo></leo>
</div>
<script type="text/javascript">
    var a = Vue.extend({
        data() {
          return {
              msg: '这个世界'
          }
        },
        template:'<h1>你好!{{msg}}</h1>'
    });
    Vue.component("leo",a);
    new Vue({
        el:'.container'
    })
</script>
</body>
```
* Vue.extend 定义全局组件
* Vue.component 给组件命名
* 需要创建实例挂载到元素上
## Vue.extend 中的属性
```
{
        data() {
          return {
              msg: '这个世界'
          }
        },
        template:'<h1>你好!{{msg}}</h1>'
    }
```
temlate: 模板,可以是字符串,也可以是模板引擎id #aaa
data: 与new Vue 中的data不同,是个函数,返回值中的属性可以在template中使用
