
export default {
    data() {
        return {
            selectEnvironnement: {},
        }
    },
    props: {
        categorieEnvironnement: {
            required: true,
        }
    },
    methods: {
        updateEnvironnement() {
            console.log(this.selectEnvironnement)
        }
    }
}