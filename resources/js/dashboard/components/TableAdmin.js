import Axios from "axios";
import addMemoires from "./addMemoires.vue";
import deleteMemoires from "./deleteMemoires.vue";
import { clientService } from "../_services/client.Service";

export default {
  components: {
    addMemoires,
    deleteMemoires
  },
  data: () => ({
    dialog: false,
    headers: [
      {
        text: 'Titre',
        align: 'start',
        sortable: false,
        value: 'titre',
      },
      { text: 'Resumé', value: 'resumer' },
      { text: 'Description', value: 'description' },
      { text: 'Auteur', value: 'auteur' },
      { text: 'Catégorie', value: 'id_categorie.nom' },
      { text: 'Type de média', value: 'media.type' },
      { text: 'Image', value: 'media.image' },
      { text: 'video', value: 'media.video' },
      { text: 'status', value: 'status.status' },
      { text: 'Actions', value: 'actions', sortable: false },
    ],
    memoires: [],
    toto: '',

  }),
  created() {
    this.getMemoires()
  },
  methods: {

    getToto() {
      console.log(this.toto)
    },

    getMemoires() {
      clientService.get('/api/memoires').then(data => {
        data.data.data.forEach(memoire => {
          this.memoires.push(memoire)
        })
      })
    }
  }

}