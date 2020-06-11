<template>
  <v-dialog v-model="dialog" persistent max-width="600px">
    <template v-slot:activator="{ on }">
      <v-btn color="teal" fab dark icon small v-on="on">
        <v-icon v-if="!isModification">mdi-plus</v-icon>
      </v-btn>
      <v-btn color="teal" fab dark icon small v-on="on" @click="editMemoire(memoire)">
        <v-icon v-if="isModification" >mdi-pencil</v-icon>
      </v-btn>
    </template>
    <v-card>
      <v-card-title>
        <span class="headline" v-if="!isModification">Ajouter une mémoire</span>
        <span class="headline" v-if="isModification">Modifier une mémoire</span>
      </v-card-title>
      <v-card-text>
        <v-container>
          <v-row>
            <v-col cols="12" sm="6" md="4">
              <v-text-field color="teal" v-model="titre" label="titre*" required></v-text-field>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-text-field color="teal" v-model="resumer" label="resumer*" required></v-text-field>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-text-field color="teal" v-model="description" label="description*" required></v-text-field>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-text-field color="teal" v-model="auteur" label="auteur*" required></v-text-field>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-select
                :items="selectCategorie"
                item-value="id"
                v-model="categorie"
                item-text="nom"
                label="categories"
              ></v-select>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-select
                :items="selectStatus"
                item-value="id"
                v-model="status"
                item-text="status"
                label="Status"
              ></v-select>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <v-select
                :items="selectMedia"
                item-value="id"
                v-model="media"
                item-text="type"
                label="Média"
              ></v-select>
            </v-col>
          </v-row>
        </v-container>
        <small>*Champ obligatoire</small>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="teal" text @click="dialog = false">Fermer</v-btn>
        <v-btn color="teal" text @click="dialog = false,addDatas()">Enregistrer</v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>
<script src="./addMemoires.js">