import Vue from 'vue';
import VueRouter from 'vue-router';
import App from './views/App.vue';
import Service from './views/Service.vue';
import Mediatheque from './views/Mediatheque.vue';
import Administrateur from './views/Administrateur.vue';

Vue.use(VueRouter);

const router = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'accueil',
            component: App,
        },
        {
            path: '/service',
            name: 'service',
            component: Service, 
        },
        {
            path: '/mediatheque',
            name: 'mediatheque',
            component: Mediatheque, 
        },
        {
            path: '/administrateur',
            name: 'administrateur',
            component: Administrateur, 
        },
    ]
})

export default router;