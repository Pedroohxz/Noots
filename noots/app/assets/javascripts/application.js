// Inclua nas versões quando rails >= 5.1
//= require jquery
//= require jquery_ujs
// Sempre inclua
//= require turbolinks
//= require materialize-sprockets
//= require_tree .




$(document).ready(function() {

    $("li").click(function(){
        $(".menu-left").css("z-index", "-2");
        $(".interface").css("z-index", "-2");
        $("#mask").css("background-color", "rgba(48, 48, 48, .7");
        $("#mask").css("height", "975px");
        $("#pop-up").css("display", "initial");
        $("#close").css("display", "initial");
        $("#shownoots").css("display", "initial");

    });

    $("#close").click(function() {
        $(".menu-left").css("z-index", "2");
        $(".interface").css("z-index", "2");
        $("#mask").css("background-color", "transparent");
        $("#mask").css("height", "0%");
        $("#mask").css("z-index", "1");
        $("#pop-up").css("display", "none");
        $("#close").css("display", "none");

    });



        $("#gap").click(function(){
        
        var valor = $("#gap").text();
        $("#noot_bimestre").val(valor);

        });

        $("#gap2").click(function() {
           
            var valor = $("#gap2").text();
            $("#noot_bimestre").val(valor);

        });
        $("#gap3").click(function() {
           
             var valor = $("#gap3").text();
             $("#noot_bimestre").val(valor);

        });
        $("#gap4").click(function() {
            
             var valor = $("#gap4").text();
             $("#noot_bimestre").val(valor);
        });

        $(document).ready(function(){
            $('select').formSelect();
          });

         
 });



  