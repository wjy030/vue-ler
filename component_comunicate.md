# 组件交互
## 父子级交互
```
<body>
<div class="container">
    <leo :fp="fatMsg"></leo>
</div>
<template id="test1">
    <input type="button" value="吞声" @click="show2">
    <h1>千变万化!{{fp}}</h1>
    <the-son :sp="fp"></the-son>
</template>
<template id="test2">
    <h1>儿子来了!{{sp}}</h1>
</template>
<script type="text/javascript">
    new Vue({
        el:'.container',
        data: {
          fatMsg:'我是你爹'
        },
        components: {
            leo: {
                props:['fp'],
                methods:{
                  show2() {
                      alert(this.fp);
                  }
                },
                template:'#test1',
                components: {
                    theSon: {
                        props:['sp'],
                        template:'#test2'
                    }
                }
            }
        }
    })
</script>
</body>
```
* new Vue 实例为顶级组件,其components中的组件为其子组件,子组件中又可以有子组件.层级可以无限延伸.
* 子组件可以使用父组件data中定义的变量
### 子组件中使用父组件的data变量
#### 在组件中使用子组件
```
<template id="test1">
    <input type="button" value="吞声" @click="show2">
    <h1>千变万化!{{fp}}</h1>
    <the-son :sp="fp"></the-son>
</template>
```
#### 使用父组件变量
``<leo :fp="fatMsg"></leo>``  
父组件中data有变量fatMsg,在子组件中引用为fp  
```
 leo: {
      props:['fp'],
      methods:{
        show2() {
            alert(this.fp);
        }
      },
```
``props:['fp'],`` 要在组件中使用fp引用,就要在组件的props中以数组形式定义  
``<h1>千变万化!{{fp}}</h1>``然后就可以在模板中正常使用了
##### props有两种类型定义
1. 通常是数组形式``props:['fp'],``
2. 如果要限定引用允许接收的类型,也可以是object类型,例:  
```
props: {
    l: String,
    fp: Number
}
```
#### 使用注意
* data变量有大小写变化时,标签中要转化为-. 如 data中为myTest 则标签中为 my-test
* 子组件中可以使用父组件data和props中定义的变量
