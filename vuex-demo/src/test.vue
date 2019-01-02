<template>
  <div>
    <h1>{{count}}</h1>
    <input type="button" value="圆圆" @click="testAdd">
  </div>
</template>

<script>
    import {mapGetters,mapActions} from 'vuex'
    export default {
        name: "test",
        computed: mapGetters(['count']),
        methods: mapActions(['testAdd'])
    }
</script>

<style scoped>

</style>
