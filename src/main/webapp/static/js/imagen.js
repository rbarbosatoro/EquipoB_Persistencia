$(document).ready(function() {

    $('.alternativa').hide();
    
    $('.main').on("mouseenter", function(){
        console.log('aaaaa');
        $(this).hide();
        $(this).next().show();
    });
    
    $('.alternativa').on("mouseleave", function(){
        console.log('bbbbb');
        $(this).hide();
        $(this).prev().show();
    });
    
    
});