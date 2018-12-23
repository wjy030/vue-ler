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
## 局部组件不能使用其外的属性和方法
```
new Vue({
        el:'.container',
        data: {
          fatMsg:'我是你爹'
        },
        method: {
          show() {
              alert('我被用了');
          }
        },
        components: {
            leo: {
                data() {
                    return {
                        msg: '这个世界'
                    }
                },
                methods:{
                  show2() {
                      alert('我弟弟被用了');
                  }
                },
                template:`<h1>你好!{{msg}}</h1>
                    <input type="button" value="试试" @click='show2'>
                 `
            }
        }
    })
```
components中的组件只能使用在其内部的data()和methods中定义属性和方法,  
而在new Vue实例中的data,method中定义的属性和方法则不能使用
