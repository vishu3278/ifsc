<template>
    <nav class="panel">
        <p class="panel-heading" v-text="title">
        </p>
        <div class="panel-block">
            <p class="control has-icons-left">
                <input class="input" type="text" placeholder="Search">
                <span class="icon is-left">
                    <i class="fas fa-search" aria-hidden="true"></i>
                </span>
            </p>
        </div>
        <router-link to="" v-for="bank in banks" v-bind:key="bank.id" class="panel-block ">
            <span class="panel-icon" v-text="bank.id">
                
            </span>
            {{bank.name}}
        </router-link>
    </nav>
</template>
<script >
export default {
  data: function () {
    return {
        title: "Banks List",
        baseurl: "localhost/ifsc/api/",
        banks: [
            { id: 1, name: "Bank of India" },
            { id: 2, name: "State Bank of India" }
        ],
        error: ""
    }
  },
  created:function() {
    axios.get('../api/index.php')
        .then((response) => {
            console.log(response.data.count);
            this.errror = response.data.count;
            if (response.data.count > 0) {
                this.error = response.data.count + " records found";
                this.banks = response.data.banks;
            } else {
                this.error = "No records found";
            }
        })
        .catch(function(error) {
            // handle error
            console.log(error);
        })
        .then(function() {
            // always executed
            this.error = "ajax request complete";
            console.log('always executed');
        });
  }
};
</script>