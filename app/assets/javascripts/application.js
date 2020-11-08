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
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$(document).on('ready page:load', function(){
  
$('#new_user').validate
({
    ignore: ".ignore",

    rules:
    {         
        "email": 
            { 
            required: true,
            email:/^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/,
            },

        "url": 
            { 
            required: true,
            url:/^((http[s]?|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?$/,     
            },

            "hiddenRecaptcha": 
            {
                required: function () 
                {
                    if (grecaptcha.getResponse() == '') 
                    {
                        return true;
                    } 
                    else 
                    {
                        return false;
                    }
                }
            },

        "msg" : 
            {
             required: true,
            }
    },
    messages:
        {           
            "email":
            {
                required: '<p style="color:red">Please enter your email</p>',
                email:'<p style="color:red">Invalid email</p>',
                
            },

            "url":
            {
                required: '<p style="color:red">Please enter your url</p>',
                url:'<p style="color:red">Invalid url</p>'
                
            },

            "hiddenRecaptcha" : 
            {
              required: '<p style="color:red">Please enter captcha</p>',

            },

            "msg": 
            {

               required: "You must check at least 1 box",

            }      

        },      
    
})
});

function result()
{
    if(! $('#check').is(':checked'))
     {
      alert("Please accept our Terms of use")
      return false  
     }

}


$(window).load(function() 
{
  $(".loader").fadeOut("slow");

})


$('#back_page').click(function() 
{
  $('#new_user').val('');
});


$(document).ready(function()
{
    $(".loader").hide();
     $('#page_load').click(function() 
       {
            if($('#new_user').valid())
            {   
                $('#new_user').hide();
                $(".loader").show();
            }
        })  
})