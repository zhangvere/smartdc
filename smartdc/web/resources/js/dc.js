$(document).ready(function(){
    $(document).off('click.bs.dropdown.data-api');
});
$(document).ready(function(){
    dropdownOpen();
});
function dropdownOpen() {
    var $dropdownLi = $('li.dropdown');

    $dropdownLi.mouseover(function() {
        $(this).addClass('open');
    }).mouseout(function() {
        $(this).removeClass('open');
    });
}
function del(){
    if(confirm("Do you want to delete this record?")){
        return true;
    }else{
        return false;
    }
}