<template>
    <div class="outNode" @mouseout="chaBot(-30)" @mouseover="chaBot(0)">
        <ul>
            <li v-for="(idx,val) in tabArr" v-show="idx == showIndex" transition="appear"><img :src="val"/></li>
        </ul>
        <ol class="selectNode" :style="{width:tabArr.length*16+'px'}">
            <li v-for="(idx,val) in tabArr" :class="idx == showIndex ? 'active' : ''"></li>
        </ol>
        <div class="imgPad" :style="{bottom:curBot+'px'}">
            <img :src="val" v-for="(idx,val) in tabArr" @click="pick(idx)"/>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['tabs'],
        data() {
            return {
                curBot: -30,
                showIndex: 0,
                tabArr: [],
                inter: ''
            }
        },
        methods: {
          pick:function (idx) {
              this.showIndex = idx;
          },
            chaBot: function (bot) {
                this.curBot = bot;
                if(bot< 0) {
                    this.inter = setInterval(()=>{
                        this.showIndex++;
                        if(this.showIndex == this.tabArr.length)
                            this.showIndex=0;
                    },1000)
                } else {
                    clearInterval(this.inter);
                }
            }
        },
        ready() {
            this.tabArr = this.tabs.arr;
            this.inter = setInterval(()=>{
                this.showIndex++;
                if(this.showIndex == this.tabArr.length)
                    this.showIndex=0;
            },1000)
        }
    }
</script>

<style scoped>
    * {
        margin: 0px;
        padding: 0px;
        list-style: none;
    }
    .appear-transition {
        transition: .8s;
    }
    .appear-leave {
        opacity: 0;
    }
    .appear-enter {
        opacity: 0;
    }
    .outNode {
        width: 490px;
        height: 300px;
        position: relative;
        overflow: hidden;
    }
    .outNode .imgPad {
        width: 308px;
        height: 30px;
        position: absolute;
        left: 50%;
        background: rgb(255,255,255,0.7);
        transform: translateX(-50%);
        transition: 1s;
    }
    .outNode .imgPad img{
        position: relative;
        margin: 2px 2px;
        width: 40px;
        height: 26px;
    }
    .outNode ul li img{
        width: 100%;
        height: 100%;
        position: absolute;
    }
    .outNode .selectNode {
        height: 16px;
        bottom: 7px;
        left: 50%;
        transform: translateX(-50%);
        background: rgb(255,255,255,0);
        position: absolute;
    }
    .outNode .selectNode li {
        width: 8px;
        height: 8px;
        background: white;
        float: left;
        margin: 4px;
        border-radius: 50%;
    }
    .outNode .selectNode .active {
        background: red;
    }
</style>