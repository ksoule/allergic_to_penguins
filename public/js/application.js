$(document).ready(function() {
  $("#register-link").on("click", regFormHandler)
  $("nav").on("click", "#dropdown-login-link",switchToLoginHandler)
  $("nav").on("submit", "#registration", newUserHandler)
  $("nav").on("submit", "#login-form", newSessionHandler)
  $("nav").on("submit", "#logout-form", deleteSessionHandler)
});

var regFormHandler = function(event) {
  event.preventDefault()
  $(this).hide()
  $("#registration").show()
  $(".login-prompt").show()
  console.log("Registration form loaded!")
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

var newUserHandler = function(event) {
  event.preventDefault()
  var $regForm = $(this);

  var promise = $.ajax ({
    url: $regForm.attr("action"),
    method: $regForm.attr("method"),
    data: $regForm.serialize()
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
  var $loginForm = $(this)

  var promise = $.ajax ({
    url: $loginForm.attr("action"),
    method: $loginForm.attr("method"),
    data: $loginForm.serialize()
  })

  promise.done(function(response){
    $loginForm.hide()
    $("nav").append(response)
  }).always(function(){
    console.log("A user has logged in!")
  })
};

var deleteSessionHandler = function(event) {
  event.preventDefault()
  var $logoutForm = $(this);

  var promise = $.ajax ({
    url: $logoutForm.attr("action"),
    method: "delete"
  })

  promise.done(function(){
    $("#registration").trigger("reset")
    $("#logout-form").remove()
    $("#greeting").remove()
    $("#register-link").show()
  }).always(function(){
    console.log("Logged out!")
  })
};





