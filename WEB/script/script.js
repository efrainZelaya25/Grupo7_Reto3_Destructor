	
	// Esperamos a que el DOM esté completamente cargado
	document.addEventListener("DOMContentLoaded", () => {
    const loginForm = document.getElementById("loginForm");
	
	//CSS --> header nav: display none
	//HTML --> nav class --> menuActivo
	//Cuando hago click en el id="buttonMenu se muestra el nav"
	const button = document.querySelector("#buttonMenu")
	const nav = document.querySelector("#menuLogo")
	button.addEventListener("click", () =>{
	nav.classList.toggle("activo")
	})


	// Usuarios y Contraseñas "Hardcoded" (Provisionales)
    const USUARIOS_VALIDOS = {
        "admin@destruyemp3.com": "12345",  
    };

    // Interceptamos el evento de Login
    if (loginForm) {
        loginForm.addEventListener("submit", (e) => {
            e.preventDefault(); // Evita que viaje al PHP antes de validar

            const email = document.getElementById("email").value.trim();
            const pass = document.getElementById("pass").value;

        // Validación contra los datos provisionales
            if (USUARIOS_VALIDOS[email] && USUARIOS_VALIDOS[email] === pass) {
        // REDIRECCIÓN: Envía al usuario a la página interna
                window.location.href = "index.html";
            } else {
    	// Credenciales incorrectas
                alert("Error: El email o la contraseña no son válidos.");
    	// BORRAR LOS CAMPOS AUTOMÁTICAMENTE
                loginForm.reset(); 
                
        // OPCIONAL: Devolver el foco al campo de email para que vuelva a escribir
                emailInput.focus();
			
			}

        });
    }
});

