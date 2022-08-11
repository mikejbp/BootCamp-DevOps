# Reto 2 - Linux - gestión de permisos

## Problema propuesto

<p align=justify>Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado <b>Lista_Precios</b> en su 
directorio <b>/home</b>. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  
utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo 
y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?</p>

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.

<hr />

### Solución Propuesta:
Asumiendo que somos Roxs, el líder del equipo de trabajo y con permisos propietarios, se puede realizar lo siguiente:

- Nos vamos a la terminal
- Accedemos a usuario `root` y colocamos nuestra contraseña
- Verificamos nuestra ubicación en las carpetas
- Vamos a /home
- Creamos un archivo llamado `Lista_Precios`


```
sudo su

pwd
cd ..
touch 'Lista_Precios'
```

Acá nos percatamos que queremos hacer ese archivo exclusivo para nosotros mismos, el **propietario** para que solo el mismo pueda acceder al archivo y nadie más.
- Se verifica la ubicación (seguimos en `/home`)
- Listamos los archivos y verificamos sus propiedades
- Nos percatamos que cuando creamos el archivo `Lista_Precios` viene por defecto con los siguientes permisos: `-rw-r--r--`
- Le otorgamos al archivo permisos de **propietario** (**owner**) únicamente.

- El comando `chmod 700 Lista_Precios` indica que le dé todos los permisos exclusivamente al **Owner**
- Mientras que el comando `chmod go-rwx Lista_Precios` le quita todos los permiso a **Groups** y **Others**, dejando solo los permisos al **Owner**

```
pwd
ls -l

chmod 700 Lista_Precios
chmod go-rwx Lista_Precios
```

### ¿Cómo verificar que esto funciona?
- Estando en la terminal, accede al **super usuario** o **usuario root** e ingresa la contraseña
- Agrega un usuario y ponle un nombre
- Te creará el usuario de manera exitosa
- Agrégale una contraseña a este nuevo usuario y sigue los pasos
- Una vez completada la creación de la contraseña, procede a iniciar con ese usuario
- Puedes saber incluso con cual usuario trabajas con el comando `whoami`

```
sudo su

useradd otroUsuario
passwd otroUsuario

sudo - otroUsuario
whoami
```

Ahora, estando en la terminal con otro usuario:
- Ubica en donde te encuentras
- Ve a la carpeta donde reside el archivo (en este caso en `/home`)
- Lista los archivos para asegurarte
- Procede a intentar editarlo con tu editor de preferencia
- En este último paso te darás cuenta que comenta `Permission denied`
- Con lo cual, si intentas editar y escribir algo nuevo para guardar, estarías creando un nuevo archivo, mas no modificando (y accediendo) el archivo `Lista_Precios`
- Salir del usuario

```
pwd
cd ..
ls
nano Lista_Precios

exit
```
