# slot使用
```
<body>
<div class="container">
    <leo>
        <span>天下布武</span>
    </leo>
    <template id="test1">
        <h1>2002年的第一场雪</h1>
        <slot></slot>
    </template>
</div>

<script type="text/javascript">
    new Vue({
        el:'.container',
        components: {
            leo: {
                template:'#test1'
            }
        }
    })
</script>
</body>
```
在leo标签中插入html标签,要想使用这些标签,就在模板引擎中使用slot标签.  
模板创建时template中的slot就会被leo标签中的html标签替代
## 更精确地使用slot
```
<div class="container">
    <leo>
        <span slot="in1">天下布武</span>
        <h2 slot="in2">战国无双</h2>
    </leo>
    <template id="test1">
        <slot name="in2"></slot>
        <h1>2002年的第一场雪</h1>
        <slot name="in1"></slot>
    </template>
</div>
```
给模板引擎中的slot指定name,  
给leo中插入的html指定slot的name``<h2 slot="in2">战国无双</h2>``,创建时这个标签就会替换对应name的slot标签
