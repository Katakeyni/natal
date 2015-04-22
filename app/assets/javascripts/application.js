// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#picture_file_preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
        console.log($('#picture_file_preview'));
    }
}
console.log($("#picture_file"));
$(document).on('change','#picture_file',function(){
    readURL(this);

})
$("#picture_file").change(function(){
    alert('hmmm');
});
$(document).on('click','#btn_picture_upload',function(){
	$('#picture_file').click();
});