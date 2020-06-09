import Axios from "axios"
import FiltreEnvironnement from '../components/FiltreEnvironnement.vue'
export default {
    components: {
        FiltreEnvironnement
    },
    data() {
        return {
            categorieEnvironnement: [],
        }
    },

    created() {
        this.getEnvironnement()
    },

    methods: {
        getEnvironnement() {
            Axios.get('/api/environnement').then(({ data }) => {
                data.data.forEach(_environnement => {
                    this.categorieEnvironnement.push(_environnement)
                })
            })
        },


    }
}