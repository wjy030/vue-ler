# 组件中模板的使用
```
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
 ```
 ** template可以是字符串,也可以是模板id **
 ## 两种模板引擎
 ### template
 ```
 <template id="test1">
    <h1>你好!{{msg}}</h1>
    <input type="button" value="试试" @click='show2'>
</template>
```
组件中:
```
template:'#test1'
```
### script
```
<script type="text/x-template" id="test2">
    <h1>你好!{{msg}}</h1>
    <input type="button" value="试试" @click='show2'>
</script>
```
组件中:
```
template:'#test2'
```
## 动态组件
```
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
                template:'#test2'
            },
            mike: {
                data() {
                    return {
                        msg: '这个世界'
                    }
                },
                methods:{
                    show2() {
                        alert('我姐姐被用了');
                    }
                },
                template:'#test1'
            }
        }
```
定义了组件后,可以用以下方式使用:  
``<component is='mike'></component>`` 




