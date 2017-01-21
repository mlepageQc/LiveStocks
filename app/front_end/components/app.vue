<template>
  <div>
    Salut enfoiré merde
  </div>
</template>

<script>
  import Vue from 'vue'
  import request from 'superagent'
  export default {
    name: 'app',
    created () {
      request
        .get('symbols')
        .query()
        .set('Accept', 'application/json')
        .end(function(err, res){
          console.log(res)
        });
    },
  }
</script>

<style>
</style>
