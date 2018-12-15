# vue初识
## 引入vue
    <div>
    {{msg}}
    </div>
    <script type="text/javascript">
        new Vue({
            el: 'div',
            data: {
                msg:'hello vue'
            }
        });
    </script>
* new Vue(Object) 通过new方法引入
* el vue使用的作用域，可以指定元素，class，id等，写法参照jquery,**如果根据表达式找到了多个元素则会报错，2.x版本后不能指定body，html**
* data 定义输出的数据
* {{}} 输出模板，里面可以放data中定义的变量或模板的内部变量
## 常用指令
### v-show
     <div v-show="true"></div>
指定组件是否显示，可以写true,false,也可以写data中定义的变量
### v-for 循环
#### 数组
    <div v-for="it in arr">{{it}}</div>
    <div v-for="(it,index) in arr">{{it}}</div> //index是索引值
    </div>
        <script type="text/javascript">
        new Vue({
            el: '#main',
            data: {
                msg:'hello vue',
                arr:['a','b','c']
            }
        });
    </script>
可以通过$index获取索引值    ``<div v-for="it in arr">{{it}}{{$index}}</div>`` **仅1.0适用**
#### 对象
    <div v-for="v in obj">{{v}}</div> //v是属性值
        <div v-for="(k,v) in obj">{{k}}:{{v}}</div> //k是属性名，v是属性值
    </div>
        <script type="text/javascript">
        new Vue({
            el: '#main',
            data: {
                msg:'hello vue',
                arr:['a','b','c'],
                obj:{id:'001',name:'mike'}
            }
        });
    </script>
可以通过$key,$value获取属性名，属性值    ``<div v-for="it in arr">{{$key}}{{$value}}</div>`` **仅1.0适用**
 
 
 
 
 
 
