<template>

<div class="row">
    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3" v-for="grade in grades">
        <div class='well'>
            <p class="lead" @click="disp(grade)"> Grade {{grade.grade}}</p>
        </div>
    </div>
</div>

</template>

<script>

export default {

    data: function() {
        return {
            grades: []
        }
    },
    mounted() {
        axios.get('/grades').then(response => {
                this.grades = response.data, console.log(response.data)
            }),
            console.log('Component mounted.')
    },
    methods: {
        disp: function(grade) {
            console.log(grade.classes);
        }
    }
}

</script>
