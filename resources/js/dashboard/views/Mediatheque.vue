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
      <v-col md="3" sm="3">
        <a href="/environnement">
          <img src="img/environnement-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3" sm="3">
        <img src="img/audio-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3" sm="3">
        <img src="img/economie-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3" sm="3">
        <img src="img/environnement-image-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3" sm="3">
        <img src="img/histoire-petit-triangle.jpg" alt />
      </v-col>
      <v-col md="3" sm="3">
        <a href="/article">
          <img src="img/manuscrit-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3" sm="3">
        <a href="/photo">
          <img src="img/photo_image-petit-triangle.jpg" alt />
        </a>
      </v-col>
      <v-col md="3" sm="3">
        <a href="/mediatheque/video">
          <img src="img/video_image-petit-triangle.jpg" alt />
        </a>
      </v-col>
    </v-row>

<v-divider></v-divider>

 
    <h2 class="pa-2 text-center purple lighten-2 float">AUDIO</h2><br>


   <v-row>
     <v-card
    class="mx-auto"
    max-width="344"
    padding="10"
    v-for="(memoire, key) in mediathequeVideo" :key="key"
  >
   <video-embed :src="memoire.video" alt width="50%"></video-embed>

    <v-card-title>
      Top western road trips
    </v-card-title>

    <v-card-subtitle>
      1,000 miles of wonder
    </v-card-subtitle>

    <v-card-actions>
     

      <v-btn
        color="purple"
        text
      >
        Explore
      </v-btn>

      <v-spacer></v-spacer>

      <v-btn
        icon
        @click="show = !show"
      >
        <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
      </v-btn>
    </v-card-actions>

    <v-expand-transition>
      <div v-show="show">
        <v-divider></v-divider>

        <v-card-text>
          I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card>
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

  <v-container fluid>
   
    <h2 class="pa-2 text-center float">Nos vidéos</h2><br>
    <!-- <v-row>
  
      <v-col md="3" v-for="(memoire, key) in mediathequeVideo" :key="key">
        <div>
          <p>{{memoire.titre}}</p>
          <p>{{memoire.description}}</p>
          <video-embed :src="memoire.video" alt width="50%"></video-embed>
          <p>{{memoire.auteur}}</p>
        </div>
      </v-col>
    </v-row> -->
    <v-row>
     <v-card
    class="mx-auto"
    max-width="344"
    padding="10"
    v-for="(memoire, key) in mediathequeVideo" :key="key"
  >
   <video-embed :src="memoire.video" alt width="50%"></video-embed>

    <v-card-title>
      Top western road trips
    </v-card-title>

    <v-card-subtitle>
      1,000 miles of wonder
    </v-card-subtitle>

    <v-card-actions>
     

      <v-btn
        color="purple"
        text
      >
        Explore
      </v-btn>

      <v-spacer></v-spacer>

      <v-btn
        icon
        @click="show = !show"
      >
        <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
      </v-btn>
    </v-card-actions>

    <v-expand-transition>
      <div v-show="show">
        <v-divider></v-divider>

        <v-card-text>
          I'm a thing. But, like most politicians, he promised more than he could deliver. You won't have time for sleeping, soldier, not with all the bed making you'll be doing. Then we'll go with that data file! Hey, you add a one and two zeros to that or we walk! You're going to do his laundry? I've got to find a way to escape.
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card>
  </v-row>
  </v-container>



<v-divider></v-divider>
  </v-container>
</template>


<script src="./mediatheque.js">
</script>