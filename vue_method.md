# vue实例方法及cloak
## 实例方法
```
<script type="text/javascript">
    let a = new Vue({
        el:".container",
        data:{
            msg:"期刊",
            obj:{
                p:"hello",
                txt:""
            }
        }

    })
    a.$mount("#pl");
    a.$data.msg = 3;
    a.$el;
    a.$set(a.obj,"txt","aaa");
    console.log(a.$options);
    // a.$log();
    // a.$destroy();
</script>
```
* $mount: 与实例中el属性一样,挂载元素.但优先级没有el高,同时使用时只有el属性起作用
* $data: 就是实例中的data
* $el: a.$el就是原生的dom对象
* $options: 可以获取实例中自定义或原生属性如a.$options.filters;a.$options.el
* $log(): 可以获取data中数据 **2.0中已取消**
* $destory(): 销毁实例
## $set()方法
```
let a = new Vue({
        el:".container",
        data:{
            msg:"期刊",
            obj:{
                p:"hello",
            }
        }

    })
    a.$set(a.obj,"txt","aaa");
```
往obj中新增txt属性时可以用a.$data.obj.txt = "aaa" 但是这样vue不会重新渲染.  
要想vue可以重新渲染就要用$set()方法  
### $set() 调用方式
* a.$set(a.obj.age, 24) **1.0版本**
* a.$set(a.obj,"age", 24) **2.0版本**
## track-by 和 :key
``<li v-for="i in arr" track-by="$index">{{i.name}}</li>``**1.0写法**
``<li v-for="i in arr" :key="i.index">{{i.name}}</li>``**2.0写法**
功能是一样的,都是设置一个id,帮助vue识别dom元素,提高渲染效率.  
另外,1.0中v-for循环相同的内容只会显示一次.通过加入 track-by="$index" 能够显示全部.而2.0是能够全部显示的.  
track-by和:key的值在v-for循环中要具有唯一性
## v-cloak
### html代码
```
<div v-cloak>
  {{ message }}
</div>
```
### css代码
```
[v-cloak] {
  display: none;
}
```
### 功能
被vue渲染的页面加载时有时会出现vue的变量名  
用了以上代码后可以防止出现这种情况  
