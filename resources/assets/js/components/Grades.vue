

<template>

<div class="row">
    <div class="col-md-12">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>Surname</th>
                    <th>Name</th>
                    <th>Username</th>
                </tr>
            </thead>
            <tbody>
              <tr v-for="grade in grades">
                <td>{{grade.grade}}</td>
                <td>Good</td>
                <td>Bad</td>
              </tr>
            </tbody>
        </table>
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
    created() {
        axios.get('/grades').then(response => {
                this.grades = response.data,
                console.log(response.data)
        }),
        $('#dataTables-example').DataTable({responsive:true}),
        console.log('Component mounted.')
    },
    methods: {
        disp: function(grade) {
            console.log(grade.classes);
        }
    }
}

</script>
