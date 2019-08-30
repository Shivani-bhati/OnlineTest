$(document).ready(function(){
	$("#question_q_type").focusout(function(){
		jQuery(".check_box").prop('checked', false);		
	});

	$(document).on("click", ".check_box", function(){
		var questionTypeVal = $("#question_q_type").val();
			if(jQuery(this).is(":checked")){
		if (questionTypeVal.toLowerCase() == "mcq" || questionTypeVal.toLowerCase() == "fill in the blanks" || questionTypeVal.toLowerCase() == "true/false" ){
				jQuery(".check_box").not(this).prop('checked', false);
			}
		}
	});
});


