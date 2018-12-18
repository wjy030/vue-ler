# vue计算属性和侦听属性
## 计算属性
```
<head>
    <title>Title</title>
    <script src="../static/js/vue.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
   <input type="text" v-model="a" @input="d=a">+
    <input type="text" v-model="b">
    c: {{c}}<br>
    d: {{d}}<br>
    e: {{e}}
</div>
<script type="text/javascript">
    var x = new Vue({
        el: '.container',
        data: {
            a:'',
            b:'',
            e:''
        },
        computed: {
            c:function () {
                return Number(this.a)+Number(this.b);
            },
            d:{
                get:function () {
                    return Number(this.a)*Number(this.b);
                },
                set:function (num) {
                    this.e = 10*num+Number(this.a)+Number(this.b);
                }
            }
        },
        methods:{
            to:function () {
                alert("*******");
            }
        }
    })
    x.to(); //变量x可以使用data中的变量和methods中的方法
    x.d = 4;
</script>
</body>
```
### 计算属性第一种形式
函数形式
```
c:function () {
    return Number(this.a)+Number(this.b);
}
```
{{c}} 在模板中输出的是函数返回值
### 计算属性第二种形式
```
d:{
      get:function () {
          return Number(this.a)*Number(this.b);
      },
      set:function (num) {
          this.e = 10*num+Number(this.a)+Number(this.b);
      }
  }
```
{{d}} 在模板中输出的是get函数返回值,``x.d = 4;``或 ``@input="d=a"``赋值时实际是调用set方法
## 侦听属性
```
x.$watch("a",function () {
        alert(x.a);
    })
```
侦听vue中的a属性，当a属性值变化时会调用后面的函数
