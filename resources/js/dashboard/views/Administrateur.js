import axios from 'axios';
import TableAdmin from "./../components/TableAdmin.vue";

export default {
    components: {
        TableAdmin,
    },
    data() {
        return {
            confirm: false,
            traces: [],
            trace: '',
            alert: {
                text: '',
                error: true,
                actif: false,
            },
        }
    },
}