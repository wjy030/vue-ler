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
        <script type="text/javascript">        new Vue({
            el: '#main',
            data: {
                msg:'hello vue',
                arr:['a','b','c'],
                obj:{id:'001',name:'mike'}
            }
        });
    </script>
可以通过$key,$value获取属性名，属性值    ``<div v-for="it in arr">{{$key}}{{$value}}</div>`` **仅1.0适用**
### v-model 双向数据绑定
    <div v-for="v in arr">{{$index}}</div>
        <input type="text" v-model="first">
        <input type="text" v-model="second">
    </div>
        <script type="text/javascript">
        new Vue({            
            el: '#main',
            data: {
                first:'',
                second:''
            }
        });
    </script>
 ### v-on 事件
     <div id="main">
        <button v-on:click="show">显隐</button>
    <div v-show="dis">
    {{msg}}
    </div>
    <div v-for="v in arr">{{$index}}</div>
        <input type="text" v-model="first">
        <input type="text" v-model="second">
    </div>
        <script type="text/javascript">
        new Vue({
            el: '#main',
            data: {
                msg:'12312312',
                dis:'true',
                first:'',
                second:''
            },
            methods: {
                show:function(){
                    this.dis = !this.dis;
                }
            }
        });
    </script>
 * v-on可以用@代替``<button @click="show">显隐</button>``
 * **methods的方法中可以通过this调用methods中的方法以及使用data中的变量**
 * 1.0中无参事件方法可以定义默认参数event  ``show:function(event){``
 * 1.0中有参事件方法可以无法定义event，可以在方法体中使用$event
 * 2.0中event无需定义直接使用，没有了$event
 #### 指令后缀
 <button v-on:click.stop="show">显隐</button>  //.stop写法就是指令后缀  
* **后缀可以串联**
* .stop 阻止单击事件冒泡
* .prevent 阻止默认事件，``<div id="main" @contextmenu.prevent="ctx">`` 用ctx方法替代默认右键事件
* .capture 添加事件侦听器时使用事件捕获模式 (多用.click.capture)
* .self 只当事件在该元素本身（而不是子元素）触发时触发回调 (多用.click.self)
* .once 事件只能点击一次 (多用.click.once)
### 键盘事件
    <input @keyup.enter="submit">
    <input @keydown.enter="submit">
#### 事件后缀
后缀有键值或键别名，**事件后缀也可以串联**  
``<input @keydown.65.enter="ctx" type="text" v-model="first">``
#### 所有键别名
.enter  
.tab  
.delete (捕获 "删除" 和 "退格" 键)  
.esc  
.space  
.up  
.down  
.left  
.right  
.ctrl  
.alt  
.shift  
.meta  
