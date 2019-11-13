<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
  import VueRouter from 'vue-router'

  import UserJoinPage from 'users/join.vue'

  const router = new VueRouter({
    mode: 'history',
    hash: false,
    routes: [
      {
        path: '/join',
        component: UserJoinPage
      }
    ],
    path: '*',
    reject: '/'
  })
</script>
