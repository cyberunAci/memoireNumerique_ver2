import Axios from "axios";
export default {
    props: {
        memoires: {
            default: function () {
                return {}
            }
        },
        memoire: {
            default: false
        },
        isModification: {
            default: false
        },
    },
    data: () => ({
        selectCategorie: [],
        selectStatus: [],
        selectMedia: [],

        mediatype: [],
        status: [],
        dialog: false,
        titre: '',
        resumer: '',
        description: '',
        auteur: '',
        categorie: '',
        status: '',
        media: '',
        id: null,

    }),
    created() {
        this.getAllSelect();


    },
    methods: {

        addDatas() {
            Axios.post('api/memoires', {
                id: this.id,
                titre: this.titre,
                resumer: this.resumer,
                description: this.description,
                auteur: this.auteur,
                id_categorie: this.categorie,
                id_status: this.status,
                id_media: this.media
            }).then(({ data }) => {
                this.$emit('addMemoire', data.data)
                if (this.isModification) {
                    this.$emit('addMemoire', [
                        data.data.titre = this.titre,
                        data.data.resumer = this.resumer,
                        data.data.description = this.description,
                        data.data.auteur = this.auteur,
                        data.data.id_categorie.id = this.categorie,
                        data.data.status.id = this.status,
                        data.data.media.id_type.id = this.media
                    ])
                }

            })
        },

        getAllSelect() {

            Axios.get("/api/selects").then(select => {
                select.data.categorie.forEach(categorie => this.selectCategorie.push(categorie))
                select.data.status.forEach(status => this.selectStatus.push(status))
                select.data.mediatype.forEach(mediatype => this.selectMedia.push(mediatype))
            })
        },
        editMemoire(memoire) {
            this.id = memoire.id
            this.titre = memoire.titre,
            this.resumer = memoire.resumer,
            this.description = memoire.description,
            this.auteur = memoire.auteur,
            this.categorie = memoire.id_categorie.id,
            this.status = memoire.status.id,
            this.media = memoire.media.id_type.id
        }

    },
}