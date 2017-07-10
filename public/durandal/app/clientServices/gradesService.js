define(['clientServices/httpService'],function(httpService){

  return {
    getGrades: function(){
        return httpService.get("/grades");
        //return $.ajax({url: "/grades"});
    }
  };

});
