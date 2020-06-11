<template>
  <v-data-table :headers="headers" :items="memoires" class="elevation-1" :items-per-page="5">
    <template v-slot:top>
      <v-toolbar flat color="white">
        <v-spacer></v-spacer>
        <!-- dialogProduct -->
        <addMemoires v-on:addMemoire="memoires.push($event)"></addMemoires>
      </v-toolbar>
    </template>
    <template v-slot:item.resumer="{ item }">{{item.resumer}},</template>
    <template v-slot:item.description="{ item }">{{item.description}}</template>
    <template v-slot:item.id_categorie.nom="{ item }">{{item.id_categorie.nom}}</template>
    <template v-slot:item.media.image="{ item }">{{item.media.image}}</template>
    <template v-slot:item.media.video="{ item }">{{item.media.video}}</template>
    <template v-slot:item.status.status="{ item }">{{item.status.status}}</template>
    <template v-slot:item.actions="{ item }">
      <addMemoires v-on:addMemoires="memoires.push($event)" :memoire="item" :isModification="true"></addMemoires>
      <deleteMemoires v-bind:memoires="memoires" v-bind:item="item"></deleteMemoires>
    </template>
  </v-data-table>
</template>

<script src="./TableAdmin.js"></script>