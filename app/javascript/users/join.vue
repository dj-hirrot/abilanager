<template>
  <form @submit.prevent="registUser">
    <div v-if="errors.length > 0">
      <ul v-for="e in errors" :key="e">
        <li>{{ e }}</li>
      </ul>
    </div>
  </form>
</template>

<script>
  import axios from 'axios'

  export default {
    data: function() {
      user: {
        name: '',
        email: '',
        password: '',
        password_confirmation: ''
      },
      errors: ''
    },
    methods: {
      registUser: function() {
        console.log('test!')
      }
    }
  }
</script>

<style>
</style>
