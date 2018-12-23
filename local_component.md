# 局部组件
全局组件可以在所有挂载中使用  
局部组件只可以在本vue实例的挂载中使用
```
var a = Vue.extend({
        data() {
          return {
              msg: '这个世界'
          }
        },
        template:`<h1>你好!{{msg}}</h1>`
    });
    new Vue({
        el:'.container',
        components: {
            leo: a
        }
    })
```
可以将在外面定义的组件引用为局部组件.  
```
new Vue({
        el:'.container',
        components: {
            leo: {
                data() {
                    return {
                        msg: '这个世界'
                    }
                },
                template:`<h1>你好!{{msg}}</h1>`
            }
        }
    })
```
也可以直接在内部定义
