import Axios from "axios"
export default {
    data() {
        return {
            categorieEnvironnement: [],
            ordre: [],
            changed: false,
            itemsPerPageArray: [4, 8, 12],
            search: '',
            filter: {},
            sortDesc: false,
            page: 1,
            itemsPerPage: 4,
            sortBy: 'titre',

            keys: [
                'titre',
                'resumer',
                'description',
                'auteur',
                'id_categorie',
                'created_at',
                'id_status',
                'id_media',
                
              
              ],
        }
    },


    created() {
        this.getEnvironnement()
    },

    computed: {
        numberOfPages () {
          return Math.ceil(this.items.length / this.itemsPerPage)
        },
        filteredKeys () {
          return this.keys.filter(key => key !== `Name`)
        },
      },
    methods: {
        getEnvironnement() {
            Axios.get('/api/environnement').then(({ data }) => {
                data.data.forEach(_environnement => {
                    this.categorieEnvironnement.push(_environnement)
                })
            })
        },

        order() {
            if (!this.changed) {
                this.ordre = []
                this.changed = true;
                Axios.get('/api/environnement/ordre').then(({ data }) => {

                    data.data.forEach(_environnement => {
                        this.ordre.push(_environnement)
                    })
                })
            } else if (this.changed) {
                this.changed = false
            }

        },
        nextPage () {
            if (this.page + 1 <= this.numberOfPages) this.page += 1
          },
          formerPage () {
            if (this.page - 1 >= 1) this.page -= 1
          },
          updateItemsPerPage (number) {
            this.itemsPerPage = number
          },

    }
}