$(document).ready(function() {
  $("#register-link").on("click", regFormHandler)

  $("nav").on("click", "#dropdown-login-link",switchToLoginHandler)

  $("nav").on("submit", "#registration", newUserHandler)

  $("nav").on("submit", "#login-form", newSessionHandler)

});

var regFormHandler = function(event) {
  event.preventDefault()
  var $regLink = $(this);

  var promise = $.ajax ({
    url: $regLink.attr("href")
  })

  promise.done(function(response) {
    $regLink.hide()
    $("nav").append(response)
  }).always(function() {
    console.log("Registration form loaded!")
  })

};

var switchToLoginHandler = function(event) {
  event.preventDefault()
  var $loginLink = $(this);

  var promise = $.ajax ({
    url: $loginLink.attr("href")
  })

  promise.done(function(response) {
    $("#registration").hide()
    $(".login-prompt").hide()
    $("nav").append(response)
  }).always(function() {
    console.log("Login form loaded!")
  })
}

// JSONify reg form
// JSONify login form (JSON?)
// Swap links

var newUserHandler = function(event) {
  event.preventDefault()
  // console.log("blah");
  var $regForm = $(this);

  var promise = $.ajax ({
    url: $regForm.attr("action"),
    method: $regForm.attr("method"),
    data: $regForm.serialize()
    // data are the new params
  })

  promise.done(function(response) {
    $regForm.hide()
    $(".login-prompt").hide()
    $("nav").append(response)
  }).always(function() {
    console.log("User logged in!")
  })
};

var newSessionHandler = function(event) {
  event.preventDefault()
  //console.log("bloop de bloop bloop... I'm making the puter work")
  var $loginForm = $(this)

  var promise = $.ajax ({
    url: $loginForm.attr("action"),
    method: $loginForm.attr("method"),
    data: $loginForm.serialize()
  })

  promise.done(function(response){
    //console.log(response)
    $loginForm.hide()
    $("nav").append(response)
  })
};












