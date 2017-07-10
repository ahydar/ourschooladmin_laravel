define([],function(){

    HttpService = {};
    HttpService.ajaxCall = function(url,type,data){
          return $.ajax({url: url,type:type});
    };

    HttpService.get = function(url,data){
          return this.ajaxCall(url,'GET',data);
    };

    HttpService.post = function(url,data){
          return this.ajaxCall(url,'POST',data);
    }

    return HttpService;
});
