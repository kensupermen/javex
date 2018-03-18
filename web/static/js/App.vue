<template>
  <div id="app">
    <app-header></app-header>
    <div class="container">
      <h1>Welcome Vue with Phoenix!!!</h1>
    </div>
    <jav></jav>
    <app-footer></app-footer>
  </div>
</template>

<script>
import AppFooter from './components/AppFooter';
import AppHeader from './components/AppHeader';
import Jav from './components/Jav';

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter,
    Jav 
  }
};
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
