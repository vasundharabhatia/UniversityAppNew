function add_new_mentor(){
	$('#choose_mentors select').attr('disabled', 'disabled');
	$('#choose_mentors').addClass("hidden");
	$('#new_fields_container').removeClass("hidden");
	$('#student_mentor_attributes_reject_mentor').val("0");
}

function show_dropdown(){
	$('#choose_mentors select').removeAttr('disabled');
	$('#new_fields_container').addClass("hidden");
	$('#choose_mentors').removeClass("hidden");
	$('#student_mentor_attributes_reject_mentor').val("1");
}
}