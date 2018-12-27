<%--
  Created by IntelliJ IDEA.
  User: wjy
  Date: 2018/12/24
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../static/js/vue1.js" type="text/javascript"></script>
</head>
<body>
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
</html>
