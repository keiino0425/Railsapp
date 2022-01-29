$(function(){

    var pageURL = location.pathname;
    pageURLArr = pageURL.split("/");
    pageURLArrCategory = pageURLArr[2];

    $(".user-nav > ul > li > a").each(function(i, v){
        var selfhref = $(v).attr("href");
        hrefArr = selfhref.split("/");
        hrefArrCategory = hrefArr[2];

        if(pageURLArrCategory === hrefArrCategory) {
            $(v).parent("li").addClass("active");
        }
    });
});