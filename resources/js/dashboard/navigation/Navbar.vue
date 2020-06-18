<template>
  <v-layout row justify-center>
    <v-app-bar app dark color="blue-grey darken-1" class="hidden-xs-and-down">
      <v-toolbar-title>MÉMOIRE NUMÉRIQUE</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items>
        <v-btn class="padding d-flex" text to="/">Accueil</v-btn>
        <v-btn class="padding d-flex" text to="/service">Service</v-btn>
        <v-btn class="padding d-flex" text v-if="isAdmin" to="/administrateur">Administrateur</v-btn>
        <v-btn class="padding d-flex" text to="/apropos">À propos</v-btn>
        <v-btn class="padding d-flex" text v-if="isCheck"  @click="logout()">Déconnexion</v-btn>
        <v-btn class="padding d-flex" text v-if="!isCheck"  to="/login">Connexion</v-btn>
      </v-toolbar-items>
    </v-app-bar>

    <v-app-bar app dark color="blue-grey darken-1" class="hidden-sm-and-up">
      <v-toolbar-title>MÉMOIRE NUMÉRIQUE</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" absolute temporary>
      <v-list nav dense>
        <v-list-item-group>
          <v-btn class="padding d-flex" text to="/">Accueil</v-btn>
          <v-btn class="padding d-flex" text to="/service">Service</v-btn>
          <v-btn v-if="isAdmin" Fclass="padding d-flex" text to="/administrateur">Administrateur</v-btn>
          <v-btn class="padding d-flex" text to="/apropos">À propos</v-btn>
          <v-btn v-if="isCheck" class="padding d-flex" text @click="logout()">Déconnexion</v-btn>
          <v-btn v-if="!isCheck" class="padding d-flex" text to="/login">Connexion</v-btn>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </v-layout>
</template>

<script>

import { authenticationService } from "../_services/authentication.service";
import router from "../routes.js";
import {Role} from "../_helpers/role.js";

export default {
  data() {
    return {
      drawer: false,
      currentUser: null
    };
  },
  computed: {
    isCheck() {
      return this.currentUser;
    },
    isAdmin() {
      return this.currentUser && this.currentUser.role.role === Role.Admin;
    }
  },
  methods: {
    logout() {
      authenticationService.logout();
      router.push("/login");
    }
  },

  created() {
    authenticationService.currentUser.subscribe(x => (this.currentUser = x));
  }
};
</script>
