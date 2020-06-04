<template>
  <v-container class="float">

    <h2 class="pa-2 text-center purple lighten-2 float">DERNIERS AJOUTS</h2><br>

    <template>
      <v-carousel cycle height="400" hide-delimiter-background show-arrows-on-hover>
        <v-carousel-item v-for="(slide, i) in slides" :key="i">
          <v-sheet :color="colors[i]" height="100%">
            <v-row class="fill-height" align="center" justify="center">
              <div class="display-3">{{ slide }} Slide</div>
            </v-row>
          </v-sheet>
        </v-carousel-item>
      </v-carousel>
    </template>

<v-divider></v-divider>

    <v-row>
      <v-col md="3">
        <a href="/mediatheque/categorie/environnement">
          <img src="img/environnement-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3">
        <img src="img/audio-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3">
        <img src="img/economie-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3">
        <img src="img/environnement-image-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3">
        <img src="img/histoire-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3">
        <a href="/article">
          <img src="img/manuscrit-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3">
        <a href="/photo">
          <img src="img/photo_image-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3">
        <a href="/mediatheque/video">
          <img src="img/video_image-petit-triangle.jpg" alt />
        </a>
      </v-col>
    </v-row>

<v-divider></v-divider>

 
    <h2 class="pa-2 text-center purple lighten-2 float">AUDIO</h2><br>


    <v-row>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
    </v-row>



<v-divider></v-divider>

    <h2 class="pa-2 text-center purple lighten-2 float">VIDEO</h2><br>


    <div class="parent cateVideo">
      <div class="div1">
        <a href="/mediatheque/1">
          <!-- <img src="" alt="" > -->
        </a>
      </div>
    </div>

     <v-row>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
      <v-col md="3">
        <img src="https://via.placeholder.com/250" alt />
      </v-col>
    </v-row>
<v-divider></v-divider>
  </v-container>
</template>


<script src="./mediatheque.js">
</script>c