<template>
  <div class="jav">
    <form class="form-inline">
      <input type="file" name="image" id="inputImage" class="form-control" />
      <button type="button" class= "btn btn-primary" v-on:click="uploadFile()">Submit</button>
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'FileUpload',

  methods: {
    uploadFile() {
      console.log("Submitted Image");
      let formData = new FormData();
      let data = document.querySelector('#inputImage');
      formData.append("image", data.files[0])

      const config = {
        headers: { 'content-type': 'multipart/form-data' }
      }
      axios.post('http://localhost:4000/api/v1/upload', formData, config)
        .then((response) =>{
          console.log("Upload successful");
        });
    }
  }
};
</script>

<style lang="scss">
</style>
