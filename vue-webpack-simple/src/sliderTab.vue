<template>
    <ul class="out">
        <li v-for="(idx,val) in tabNodes" :class="classNodes[idx]" :style="{background:'url('+val+')',backgroundSize:'cover'}" @click="shift"></li>
    </ul>
</template>

<script>
    export default {
        props: ['tabs'],
        data() {
            return {
                tabNodes: [],
                classNodes:[]
            }
        },
        methods: {
          shift: function () {
              this.classNodes.push(this.classNodes.shift());
              console.log(this.classNodes);
          }
        },
        ready() {
            this.tabNodes = this.tabs.arr;
            this.classNodes = [];
            for(let i=0;i<this.tabNodes.length;i++) {
                this.classNodes.push('s'+i);
            }
        }
    }
</script>

<style scoped>
    * {
        margin: 0px;
        padding: 0px;
        list-style: none
    }
    .out {
        height: 230px;
        position: relative;
    }
    .out li {
        height: 100%;
        width: 300px;
        transition: .7s;
        transform: perspective(800px)
    }
    .out .s3 {
        top: 0px;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        z-index: 7;
    }
    .out .s2 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: -150px;
        opacity: 0.7;
        transform: translateX(-50%) perspective(800px) rotateY(30deg);
        z-index: 6;
    }
    .out .s4 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: 150px;
        opacity: 0.7;
        transform: translateX(-50%) perspective(800px) rotateY(-30deg);
        z-index: 5;
    }
    .out .s1 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: -300px;
        transform: translateX(-50%) perspective(800px) rotateY(15deg);
        z-index: 4;
        opacity: 0.4;
    }
    .out .s5 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: 300px;
        transform: translateX(-50%) perspective(800px) rotateY(-15deg);
        z-index: 3;
        opacity: 0.4;
    }
    .out .s0 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: -450px;
        transform: translateX(-50%) perspective(800px) rotateY(5deg);
        z-index: 2;
        opacity: 0;
    }
    .out .s6 {
        top: 0px;
        position: absolute;
        left: 50%;
        margin-left: 450px;
        transform: translateX(-50%) perspective(800px) rotateY(-5deg);
        z-index: 1;
        opacity: 0;
    }
</style>