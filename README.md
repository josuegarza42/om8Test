# dev_job

Este proyecto se comenzo el 07/12/2022 y se culmino el 12/18/2022

# Colaboracion con:
Ulises Uriel Dominguez Perez (BlurryBunny)

# Link de descarga del apk:
https://drive.google.com/file/d/1es6Hau_7ZnBXf5576Qqm0xuTb6XUDT00/view?usp=share_link

# Documentacion del proyecto:
https://github.com/josuegarza42/om8Test/blob/main/devjob%20prueba%20practica.pdf

<h2 align="center">
Reto Red Om8 | Prueba Técnica - FrontEnd Developer - Flutter Developer 💻
</h2> 

## Requisitos

1. Pantalla de Login/Registro (Autenticación con Firebase Auth) ✅
2. Navegación simple con animación (Bottom Nav Bar) con 2 Páginas: ✅
    *  Ver productos✅
    *  Mi carrito 🕓
3. Mostrar un index de los primeros 20 productos en cuadrícula ✅
4. Mostrar la info de un solo producto con opción de regresar al index✅
5. Agregar productos a carrito🕓
6. Vista en la navegación donde se muestre la lista de artículos en el carrito, y suma del total con y sin IVA. 🕓
7. Usar una instancia de pruebas de stripe para hacer cargos por el total, con una descripción con la lista de artículos.🕓
8. Mostrar mensaje en caso de éxito/error🕓

### API Fake Store
https://fakestoreapi.com/docs 

### Stripe 
https://docs.page/flutter-stripe/flutter_stripe


## Aprendizajes
12/12/22
## Retos del proyecto, investigación y soluciones
Hubo varios retos en el proyecto, redactare a continuación los retos más relevantes a mi parecer. 
Conexión con firebase y corrección de errores en archivos build.grandle:
Para poder comenzar con el proyecto debía de checar primero que nada que la app pudiera conectar con una base de datos, en este caso fue firebase, pues de nada me sirve una app que funcione únicamente en local o que no sea capaz de manipular datos.
Seguido de esto tuve un problema con las versiones del sdk mínimo que debe de soportar la aplicación, personalmente no me había enfrentado al problema anteriormente, pero un artículo en stackoverflow salvo el día, fue frustrante pues el error no era intuitivo y pase unos días averiguando que podría estar mal, aprendí a resolver problemas relacionados con versiones de controladores gracias a este proyecto.

### Solución: <br>
https://stackoverflow.com/questions/57238933/gradle-failure-a-problem-occurred-evaluating-project-app
<br>
Manejo de usuarios en flutter 
El hacer un login podría parecer sencillo, pero cuando empiezas a implementar validaciones de seguridad te das cuenta de que el tema puede ser tan extenso como te lo propongas, realice el registro de usuarios mediante las pantallas afiliadas al login, en otros lenguajes esto es algo complicado, pero en flutter pude resolver esto con ciertas dependencias que hacen la tarea mas sencilla y con un gran resultado en la implementación. Se realizo con éxito las tareas de loguear, registrar y modificar contraseñas con éxito.
### Solución:
https://www.udemy.com/user/muhammad-ali-zeb-3/ (Varios cursos de este autor) <br>
https://www.udemy.com/course/learn-flutter-3-firebase-build-freelancer-clone-app/learn/lecture/33660074#overview <br>
Crud de objetos

El proyecto claramente menciona que se desea unas pantallas en las cuales el usuario puede cargar productos al carrito, ver los productos etc., en mi caso particular me encontré escaso de tiempo cuando llegué a este punto, y decidí mostrar como se hace una inserción según el usuario registrado y como se ve esta inserción en la pantalla correspondiente, también como se elimina el producto de la lista generada. 
### Solución:
https://www.udemy.com/user/muhammad-ali-zeb-3/ (Varios cursos de este autor) <br>
https://www.udemy.com/course/learn-flutter-3-firebase-build-freelancer-clone-app/learn/lecture/33660208#overview <br>
Una vez que pude mostrar productos que yo creaba ahora si podía pasar al siguiente paso, el cual era la implementación de la API de FakeStore y esta misma poder brindar la implementación del modulo de pago con stripe. Desafortunadamente el tiempo me alcanzo y esto será implementado en una siguiente versión.
### Continuacion del reto:
18/12/22 <br>
El reto en este momento era utilizar el API de FakeStore, a lo cual acudi con Ulises Uriel Dominguez Perez (BlurryBunny) para solicitar apoyo, el cual en todo momento me lo brindo y con su ayuda pude conseguir avanzar en este reto. <br>
El proyecto evoluciono en otras 2 pantallas y se adapto codigo para que este funcionara en el proyecto original.
Reto: No sabia como utilizar el api de FakeStore
Solucion:<br>
Ulilize este video para guiarme en el uso de FakeStore
<br>
https://www.youtube.com/watch?v=7gns1G72S_Q
<br>

Reto: Mi codigo originalmente estaba mal ordenado, mis pantallas no funcionaban correctamente, estaban mal indexadas.<br>
Solucion: Tomarme el tiempo de revisar esto y comenzar a hacer buenas practicas para que este tuviera cierta estructura<br>
<br>
Reto: Mostrar los productos y detalle de cada uno<br>
Solucion: Consulte la siguiente documentacion:<br>
https://pub.dev/packages/get_it <br>
https://frontbackend.com/flutter/how-to-create-a-list-in-flutter <br>
https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html <br>
https://docs.flutter.dev/development/data-and-backend/json <br>
https://pub.dev/packages/http/example <br>
Asi mismo con la ayuda de Ulises y con su permiso pude agarrar codigo que me podia servir y adaptarlo a mi proyecto.

![WhatsApp Image 2022-12-12 at 11 17 48 PM](https://user-images.githubusercontent.com/44554474/207664324-43f9fd00-8de8-4306-9882-6f3651f67354.jpeg) 
