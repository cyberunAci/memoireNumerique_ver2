import Axios from "axios"

export default {
    props: ["item", "memoires"],
    data() {
        return {
            dialog: false,
        }
    },
    methods: {

        deleteItem(item) {

            const index = this.memoires.indexOf(item);
            if (confirm("Voulez vous supprimer cette memoire?") === true) {
                Axios({
                    method: 'delete',
                    url: '../api/dashboard/memoires/' + this.memoires[index].id
                }).then(this.memoires.splice(index, 1))
            } else {
                this.dialog = false
            }
        },
    }
}