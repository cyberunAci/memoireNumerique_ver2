<template>
  <v-row>
    <v-col>
      <v-card class="pa-5 d-flex flex-row align-items-center" outlined tile>
        <h2 class="d-flex flex-fill p-2 h-100">Dashboard</h2>
        <div class="d-flex flex-row">
          <v-btn class="padding d-flex" text to="/">Accueil</v-btn>
          <v-btn class="padding d-flex" text to="/service">Service</v-btn>
          <v-btn class="padding d-flex" text to="/mediatheque">Médiathèque</v-btn>
           <v-btn class="padding d-flex" text to="/administrateur">Administrateur</v-btn>
        </div>
      </v-card>
    </v-col>
  </v-row>
</template>