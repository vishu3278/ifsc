<template>
    <div id="banks">
        <v-sheet elevation="2" class="px-4 mb-4">
            <v-row align="center" no-gutters>
                <v-col cols="12" sm="8">
                    <h4 class="">
                        {{title}}
                        <span class="subtitle-1">
                            {{bankname}}
                        </span>
                    </h4>
                </v-col>
                <v-col cols="12" sm="4">
                    <v-select v-model="state" @change="getBank()" :items="states" label="Select State"></v-select>
                </v-col>
            </v-row>
        </v-sheet>
        <v-alert :value="error.show" :type="error.type" text border="left" icon="mdi-alert" transition="scale-transition"> {{error.msg}}</v-alert>
        <v-row>
            <v-col cols="12" sm="6" lg="4" v-for="(branch, index) in branches" :key="index">
                <v-card width="100%">
                    <div class="d-flex flex-no-wrap justify-space-between">
                        <div>
                            <v-card-title class="indigo--text text--darken-2" v-text="branch.adr1"></v-card-title>
                            <v-card-subtitle class="indigo--text pb-0">{{branch.adr2}} - {{branch.city}}<br>
                            <span class="text-overline" v-text="branch.state"></span></v-card-subtitle>
                        </div>
                        <v-avatar class="ma-3" size="80" color="grey lighten-4" tile>
                            <v-img></v-img>
                        </v-avatar>
                    </div>
                    <v-card-text class="py-1">
                        <p class="mb-1" v-text="branch.adr5"></p>
                        <p class="mb-0 blue--text text--darken-2 text-subtitle-2" ><v-icon small>mdi-card-account-phone-outline</v-icon> {{branch.contact}}</p>
                    </v-card-text>
                    <v-card-actions>
                        <v-chip v-show="branch.ifsc" class="mx-1" small label color="yellow">
                            IFSC
                            <v-divider vertical class="mx-2"></v-divider>
                            {{branch.ifsc}}
                        </v-chip>
                        <v-chip v-show="branch.micr" class="mx-1" small label color="yellow darken-1">
                            MICR
                            <v-divider vertical class="mx-2"></v-divider>
                            {{branch.micr}}
                        </v-chip>
                    </v-card-actions>
                </v-card>
            </v-col>
        </v-row>
        <v-overlay :value="loading">
            <v-progress-circular indeterminate size="64"></v-progress-circular>
        </v-overlay>
    </div>
</template>
<script>
import axios from 'axios';

export default {
    data: function() {
        return {
            title: "Branch List",
            bankname: '',
            branches: [
                { id: 1, name: "Bank Name" },
                { id: 2, name: "State Bank of India" }
            ],
            states: [],
            state: '',
            loading: false,
            error: {},
            img: "https://loremflickr.com/48/48?random="
        }
    },
    created: function() {
        this.loading = true;
        axios.get('http://localhost/ifsc/api/branches.php?bank_id=' + this.$route.params.bankid)
            .then((response) => {
                // console.log(response.data.count);
                // this.errror = response.data.count;
                if (response.data.count > 1) {
                    this.error.show = true;
                    this.error.type = "success";
                    this.error.msg = response.data.count + " states found for " + this.bankname;
                    // this.branches = response.data.branches;
                    this.states = response.data.state;
                    this.state = response.data.state[0];
                    this.getBank();
                    
                    console.warn(response.data.count);
                } else {
                        this.error.show = true;
                        this.error.type = "warning";
                        this.error.msg = "No branches found";
                    // this.error = "No records found";
                }
            })
            .catch((error) => {
                // console.log(error);
                this.error.show = true;
                this.error.type = "warning";
                this.error.msg = error
            })
            .then(() => {
                this.loading = false;
                // console.log('always executed');
            });
    },
    mounted: function() {
        this.bankname = this.$route.params.bankname;
        window.localStorage.setItem('fquery', this.$route.params.fquery);
    },
    computed: {

    },
    methods: {
        searchFilter: function() {
            this.branches.filter((item) => {
                return item.id < 10;
            });
        },
        getBank: function() {
            this.loading = true;
            axios.get('http://localhost/ifsc/api/branch.php?bank_id=' + this.$route.params.bankid + '&state=' + this.state)
                .then((response) => {
                    if (response.data.count > 0) {
                        this.branches = response.data.banks;
                        this.error.type = "success";
                        this.error.msg = response.data.count + " records found"
                    } else {
                        this.error.show = true;
                        this.error.type = "warning";
                        this.error.msg = "No records found"
                    }
                })
                .catch((error) => {
                    this.error.show = true;
                    this.error.type = "warning";
                    this.error.msg = error
                }).then(() => {
                    this.loading = false;
                })
        }
    }
}
</script>