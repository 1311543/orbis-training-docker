# Ejercicio Git

## Parte 1

### 1. Instalar git (Opcional)

- Git:
	- [Instalar Git](https://git-scm.com/download)

Luego de instalar, comprobar las versiones de git.


### 2. Configurar Git

Configurar nombre e email con el usuario de la máquina.

**Respuesta**
```
$ git config --global user.email "you@example.com"
$ git config --global user.name "Your Name"
```

### 3. Crear un repositorio en github
El nombre del repo debe ser `capacitacion-problema1`. 

En caso de que uno del equipo no tenga una cuenta en github, entonces crearla.

### 4. Clonar repositorio creado (configurar ssh)
Al clonar un repositorio de git o bitbucket posiblemente pida un permiso y si no se ha configurado puede que salga este error:
```bash
$ git clone git@github.com:[nombre-usuario]/capacitacion-problema1.git
Cloning into 'capacitacion-problema1'...
The authenticity of host 'github.com (192.30.253.113)' can't be established.
```

Por lo tanto se debe **Generar la llave SSH** 
Luego de [configurar la llave SSH en Github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/), clonar el proyecto.

### 5. Crear un archivo `README.md`
Su contenido será:
```markdown
# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- [Nombre del primer miembro]
- [Nombre del segundo miembro]
```

### 6. Crear un commit (new feature) con el estándar de Angular
El nombre del commit es según a su criterio.
[Guía del estándar de angular](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)

### 7. Integrar los cambios al repositorio remoto
Verificar que en el repositorio de Github esté el commit y el archivo `README.md`

### Responder estas preguntas :

#### Preguntas:

```bash
1. ¿Qué es y para qué sirve GIT?
2. ¿Que es Github o bitbucket?
3. ¿Qué es y para qué sirve el SSH?
4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué?
5. ¿Qué es markdown? ¿Para qué sirve?
6. ¿Cómo inicializo y configuro un proyecto de git?
```

## Parte 2

Imagínate que estas desarrollando este ejercicio de lo más tranquilo de la vida y viene el Scrum Master o JP (ese que se preocupa por el equipo) y dice que en el proyecto que estás haciendo crees una rama.

### 1. Crear una rama llamada `tarea`
- Esta rama debe nacer de `master`
- Agregar un archivo `intro.md` cuyo contenido son las respuestas a estas preguntas:
	- ¿Qué es integración continua?
	- ¿Para qué sirve DevOps?

Luego viene el Scrum Master y te dice que hay un error crítico en el proyecto donde estás. Tienes que modificar el archivo `readme.md`, pero tomando en cuenta de que **aún no debes guardar los cambios que hiciste** en `intro.md`

### 2. Guardar los cambios sin confirmación de cambio (sin hacer commit)

### 3. Modificar el archivo `Readme.md` en la rama `master`
- Agregar el nombre del Scrum Master como un integrante más.

### 4. Confirmar el cambio y actualizar la rama remota `master`

### 5. Regresar a la rama `tarea` y aplicar los cambios guardados en memoria

### 6. Listar las entradas que existen guardadas con `git stash`
- En caso de que exista entradas, entonces eliminarla.

### 7. Unir los cambios de la rama `tarea` con `master` y actualizar rama remota
- **OJO**: es recomendable actualizar la rama `tarea` de la rama `master` antes de combinar las ramas.
- Luego de actualizar la rama remota, se debe eliminar la rama tarea local y remota.


### Responder estas preguntas :

#### Preguntas:

```bash
1. ¿Para qué ayuda el `git stash`?
2. ¿Cuál es la diferencia entre `git stash pop` y `git stash apply`?
3. ¿Qué significa el modo interactivo del `git rebase`?
4. ¿Cual es la diferencia entre la shell y la terminal?
5. ¿Que hace estos comandos? `git clone`, `git status`, `git add`, `git commit`, `git push`, `git checkout`, `git stash`, `git rebase`, `git merge`, `git branch`, `git push`,
```

## Parte 3
Imagínate que alguien subió un archivo muy pesado en el proyecto `git@bitbucket.org:orbisunt/orbis-example-training.git` y por ello se demora mucho en descargar. Tu deber es encontrar el archivo y eliminarlo totalmente del rastro de git.

**Seguir estos pasos:**

1. Descargar el proyecto
2. Cambiar el repositorio remoto `origin` por uno de igual nombre en tu cuenta github. (Crear en github el repositorio y enlazarlo)
3. Subir los cambios a github ¿Qué mensaje aparece?
4. Ahora el objetivo de esta parte es identificar el archivo más pesado que se encuentra en el repositorio y eliminarlo.
5. Subir los cambios
6. Explicar en el `readme.md` qué pasos se siguieron y qué hace cada comando (detallando también los flags que se usaron).
7. Como último paso es corregir todos los commits que existen en el repositorio, a nombres que respeten el estandar de commits de angular y subir los cambios al repositorio remoto.

Es importante saber cuánto pesaba el proyecto antes y despues de eliminar el archivo.

Gracias =)

