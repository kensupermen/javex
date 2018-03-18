<template>
  <div class="jav">
    <form class="form-inline">
      <input type="file" name="image" id="inputImage" class="form-control" />
      <button type="button" class= "btn btn-primary" v-on:click="uploadFile()">Submit</button>
    </form>
  </div>
</template>

<script>

export default {
  name: 'FileUpload',

  methods: {
    uploadFile() {
      console.log("Submitted Image");
    }
  }
};
</script>

<style lang="scss">
</style>
