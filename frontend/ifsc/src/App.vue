<template>
    <v-app>
        <v-app-bar app color="white">
            <div class="d-flex align-center">
                <v-img alt="Vuetify Name" class="shrink mt-1 " contain min-width="100" src="./assets/logo.png" width="100" />
            </div>
            <v-spacer></v-spacer>
            <router-link to="/" class="btn mx-2">Banks</router-link>
            <router-link to="/about" class="btn mx-2">About Us</router-link>
        </v-app-bar>
        <v-main>
            <v-container>
                <router-view />
            </v-container>
        </v-main>
        <v-footer padless color="primary lighten-2 mt-5">
            <v-row justify="center" no-gutters>
                <v-btn v-for="link in links" :key="link" color="white" text class="my-2">
                    {{ link }}
                </v-btn>
                <v-col class="primary lighten-3 py-4 text-center white--text" cols="12">
                    {{ new Date().getFullYear() }} — <strong>IFSC Lookup</strong>
                </v-col>
            </v-row>
        </v-footer>
    </v-app>
</template>
<script>
// import HelloWorld from './components/HelloWorld';

export default {
    name: 'App',

    components: {
        // HelloWorld,
    },

    data: () => ({
        links: [
            'Home',
            'About Us',
            'Privacy',
            'Services',
            'Blog',
            'Contact Us',
        ],
    }),
};
</script>