<template>
  <v-container fluid>
    <filtreEnvironnement :categorieEnvironnement="categorieEnvironnement"></filtreEnvironnement>

    <h1>ENVIRONNEMENT</h1>
    <v-row>
      <v-col md="3" v-for="(environnement, key) in categorieEnvironnement" :key="key">
        <img :src="environnement.media.image" alt width="50%" />
      </v-col>
    </v-row>
  </v-container>
</template>

<script src="./environnement.js"></script>