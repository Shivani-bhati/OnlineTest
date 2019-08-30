$(document).on('click', '.option', function() {
var value=$(this).parents().children().eq(0).prop("checked");
if(value)
$(this).parents().children().eq(0).prop("checked",false);
else 
$(this).parents().children().eq(0).prop("checked",true);
})


