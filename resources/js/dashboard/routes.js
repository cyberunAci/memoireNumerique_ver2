import Vue from 'vue';
import Embed from 'v-video-embed';
import VueRouter from 'vue-router';
import App from './views/App.vue';
import Service from './views/Service.vue';
import Mediatheque from './views/Mediatheque.vue';
import Administrateur from './views/Administrateur.vue';
import Environnement from './views/Environnement.vue';
import Login from "./Login.vue";
import { Role } from './_helpers/role';
import { authenticationService } from './_services/authentication.service'



Vue.use(VueRouter);
Vue.use(Embed);

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
            meta: { authorize: [Role.Admin] } 
        },
        {
            path: '/environnement',
            name: 'environnement',
            component: Environnement, 
        },
        {
            path: '/login',
            name: 'login',
            component: Login,
            meta: { authorize: [] }
        },
        {
            path: '/apropos',
            name: 'apropos',
            component: App,
        },
    ]
})

router.beforeEach((to, from, next) => {

    // redirect to login page if not logged in and trying to access a restricted page
    const { authorize } = to.meta;

    if (authorize && !_.isEmpty(authorize)) {

        const currentUser = authenticationService.currentUserValue;

        if (!currentUser) {
            // not logged in so redirect to login page with the return url
            return next({ path: "/login", query: { returnUrl: to.path } });
        }

        // check if route is restricted by role
        if (authorize.length && !authorize.includes(currentUser.role.role)) {
            
            // role not authorised so redirect to home page
            return next({ path: "/" });
        }

    }

    return next();
});

export default router;