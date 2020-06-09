<template>
  <div>
    <v-select
      v-model="selectEnvironnement"
      :items="categorieEnvironnement"
      item-text="titre"
      @change="updateEnvironnement"
    ></v-select>
  </div>
</template>

<script src="./filtreEnvironnement.js"></script>