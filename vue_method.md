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
