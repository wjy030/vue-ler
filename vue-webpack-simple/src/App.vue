<template>
    <div id="app">
        <!--<tab :tabs="tabNode"></tab>-->
        <slider-tab :tabs="tabNode"></slider-tab>
    </div>
</template>

<script>
    import tab from './tab.vue'
    import sliderTab from './sliderTab.vue'
    export default {
        data() {
            return {
                tabNode: {
                    arr: ['./img/1.jpg','./img/2.jpeg','./img/3.jpg','./img/4.jpg','./img/5.jpg','./img/6.jpeg','./img/7.jpeg']
                }
            }
        },
        components: {
            tab,sliderTab
        }
    }
</script>

<style>
    body {
        font-family: Helvetica, sans-serif;
    }
</style>
