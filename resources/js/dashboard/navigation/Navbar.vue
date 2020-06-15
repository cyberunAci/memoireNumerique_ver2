<template>
  <v-row>
    <v-col>
      <v-card class="pa-5 d-flex flex-row align-items-center" outlined tile>
        <h2 class="d-flex flex-fill p-2 h-100">Dashboard</h2>
        <div class="d-flex flex-row">
          <v-btn class="padding d-flex" text to="/">Accueil</v-btn>
          <v-btn class="padding d-flex" text to="/service">Service</v-btn>
          <v-btn class="padding d-flex" text to="/mediatheque">Médiathèque</v-btn>
           <v-btn v-if="isAdmin" Fclass="padding d-flex" text to="/administrateur">Administrateur</v-btn>      
           <v-btn v-if="isCheck" class="padding d-flex" text @click="logout()">Déconnexion</v-btn>
           <v-btn v-if="!isCheck" class="padding d-flex" text to="/login">Connexion</v-btn>
        </div>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
import { authenticationService } from "../_services/authentication.service";
import router from "../routes.js";
import {Role} from "../_helpers/role.js";

export default {
  data () {
        return {
            currentUser: null
        };
    },
    computed:{
       isCheck(){
      return this.currentUser;
    },
    isAdmin () {
            return this.currentUser && this.currentUser.role.role === Role.Admin;
      },
    },
  methods: {
    logout() {
      authenticationService.logout();
      router.push("/login");
    },
  },

 created () {
        authenticationService.currentUser.subscribe(x => this.currentUser = x);
    },
};
</script>