// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
//= require jquery.turbolinks

$(document).on('turbolinks:load', function () {
    $('#datatable').DataTable( {
        columnDefs: [
            { orderable: false, targets: -1 },
            { orderable: false, targets: -2 },
            { orderable: false, targets: -3 },
         ]
    } );
} );


//SOLUTION 1
// var dataTable = null

// document.addEventListener("turbolinks:before-cache", function() {
//   if (dataTable !== null) {
//    dataTable.destroy()
//    dataTable = null
//   }
// })


//JQUERY ON LOAD SOLUTION 

// $(document).ready(function() {
//     // let adder = document.getElementById('adder');
//     // let hiddenAdder = document.getElementById('hidden-adder');

//     // adder.addEventListener('click', () => {
//     //     adder.style.display="none";
//     //     hiddenAdder.style.display="flex";
//     // });
    
// });