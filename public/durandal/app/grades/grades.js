define(['plugins/http', 'durandal/app', 'knockout','clientServices/gradesService'], function (http, app, ko,gradesService) {
    //Note: This module exports an object.
    //That means that every module that "requires" it will get the same object instance.
    //If you wish to be able to create multiple instances, instead export a function.
    //See the "welcome" module for an example of function export.
    function Grades(){
        var self = this;
        this.displayName = 'Grades';
        this.grades = ko.observableArray();
        this.currentGradeName = ko.observable("");
        this.currentGradeClasses = ko.observableArray();

        this.btnClicked = function(){
            app.showMessage("This is a test message");
        };

        this.manageGrade = function(selectedGrade){
          console.log("****We managing grade");
            console.log("Selected grade");
            console.log(selectedGrade.grade);
            self.currentGradeName(selectedGrade.grade);
            console.log("This is it");
            console.log(selectedGrade.classes);
            self.currentGradeClasses(selectedGrade.classes);
            $("#manage").modal("show");
        };
        this.activate = function () {
          gradesService.getGrades().done(function(result){
            self.grades(result);
          });
        };

        this.attached = function(){
            $('#dataTables-example').DataTable({responsive:true});
            $("#test").html("testing");
        };
    };

    return Grades;
});
