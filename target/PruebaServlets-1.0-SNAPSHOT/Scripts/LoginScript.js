const btnLogin = document.getElementById("login"), 
      btnRegister = document.getElementById("register"),
      containerFromRegistrarse = document.querySelector(".registro"),
      containerFromIniciarSesion = document.querySelector(".iniciar-sesion");
    
btnRegister.addEventListener("click", e => {
    containerFromIniciarSesion.classList.add("hidden"),
    containerFromRegistrarse.classList.remove("hidden");
});

btnLogin.addEventListener("click", e => {
    containerFromRegistrarse.classList.add("hidden"),
    containerFromIniciarSesion.classList.remove("hidden");
});


