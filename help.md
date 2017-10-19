<div class="center">

![Logo](./logo.png){width="200" height="200"}

</div>

gambas-extra-functions
======================

Autor: **Martín Belmonte**

Proveedor: **Belmotek**

Versión: **0.1.27**

Componentes:
**gb.image:gb.gui.qt:gb.form:gb.db:gb.desktop.x11:gb.desktop:gb.eval:gb.eval.highlight:gb.form.editor:gb.settings:gb.form.mdi:gb.gui.qt.webkit:gb.markdown:gb.pcre:gb.pdf:gb.report2:gb.sdl2.audio:gb.vb:gb.xml**

gambas-extra-functionsconsta de **168** métdos

GEFBatch.module
---------------

### FileDelibery

-   **strTool** *As String*
-   **strPath** *As String*
-   *Optional* **intPage** *As Integer*
-   *Optional* **strMod** *As String*

Funcion que reparte el archivo a una funcion coincidente con el nombre
de la herramienta "Tool" en el segundo parametro

### HTMLMD

-   **strPath** *As String*
-   **strMod** *As String*

Esta funcion convierte un arcihvo html en Markdown usando el prgrama
pandoc.

### HTMLPDF

-   **strPath** *As String*
-   **strMod** *As String*

Esta funcion convierte un archivo html en pdf usando el prgrama
wkhtmltopdf o pandoc.

### ImageConvert

-   **strPath** *As String*
-   **strFormat** *As String*

Convierte una imágenes JPEG a otra formato PNG.

### WAV2OGG

-   **strPath** *As String*

Esta función convierte un archivo WAV un UNO OGG. Como parametro de
entrada requiere una ruta del archivo WAV. El archivo OGG sera creado en
la misma ubicación que el WAV y se devolvera la ruta de este en caso que
todo haya ido bien.

### TEXNodes

-   **stxNodes** *As String\[\]*

''Crea un diagrama colorido y agradable para el modelo nodo-children
donde el nivel de anidamiento puede variar desde 2 a 3. Como parametro
de entrada requiere una matriz de texto donde cada item de la misma
tiene la forma node-level-1\\tnode-level-2\\tnode-level-n.

### LATEXPDF

-   **strPath** *As String*
-   **strMod** *As String*

Convierte un arcivo tex en pdf usando el prgrama pdflatex

### TXT2OGG

-   **strPath** *As String*
-   **strLang** *As String*

Esta funcion convierte un archivo de texto TXT en un archivo OGG. Como
parametros de entrada requiere una ruta valida a un archivo TXT que
contenga el texto y el idioma.

### AudioExtractor

-   **strPath** *As String*

Esta funcion extrae solamente la pista de audio de un archivo de video.
Devuelve la rutade destino del archivo extraido

### VideoExtractor

-   **strPath** *As String*

Esta funcion extrae solamante la pista de video de un archivo de video.
Devuelve la rutade destino del archivo extraido

### VideoMixer

-   **strPath** *As String*

Devuelve la ruta de destino del archivo remasterzado creado. avconv -i
output.mkv -an -i konvertilo-02-media-arrange.ogg output-unido.mkv

### MediaArrange

-   **strPath** *As String*
-   **strLog** *As String*

Devuelve la rutade destino del archivo

### JPEGGIFEmail

-   **strPath** *As String*

Si el archivo es procesado satisfactoriamente se devuelve la ruta de
este.

### TIFJPEG

-   **strPath** *As String*

Convierte una imágenes TIF a JPEG.

### ImageBook

-   **strPath** *As String*
-   *Optional* **strMod** *As String*

Convierte una imágenes TIF a JPEG.

### JPEGPNG

-   **strPath** *As String*

Convierte una imágenes JPEG a otra formato PNG.

### JPEGPDF

-   **strPath** *As String*

Convierte todas las imágenes JPEG de la lista en un archivo PDF. Si el
archivo PDF es creado satisfactoriamente se devuelve la ruta del mismo.

### JPEGCopyRC

-   **strPath** *As String*
-   *Optional* **strCompress** *As String*

Devuelve la ruta al archivo jpeg creado

### JPEGCopyRG

-   **strPath** *As String*
-   *Optional* **strCompress** *As String*

Devuelve la ruta al archivo jpeg creado

### PNGReduced

-   **strPath** *As String*
-   *Optional* **strCompress** *As String*

Devuelve la ruta al archivo jpeg creado

### PDFDecrypt

-   **strPath** *As String*

Devuelve la ruta al archivo desencriptado

### PDFImage

-   **strPath** *As String*
-   **intPage** *As Integer*
-   *Optional* **strMod** *As String*

Devuelve la ruta a la imagen extraida. Como parametros de entrada
requiere la ruta al archivo PDF, la página y el tipo de archivo que se
desea extraer, PNG, JPEG, TIF.

### PNGOCRText

-   **strPath** *As String*
-   *Optional* **strLang** *As String*

Devuelve la ruta al archivo .txt con el texto extraido o "0" si no hay
texto.

### JPEGOCRText

-   **strPath** *As String*
-   *Optional* **strLang** *As String*

Devuelve la ruta al archivo .txt con el texto extraido o "0" si no hay
texto.

### PDFOCRText

-   **strPath** *As String*
-   **intPage** *As Integer*
-   *Optional* **strLang** *As String*

Devuelve el texto extraido de la pagina. Como parametros de entrada
requiere la ruta del archivo PDF la página y el idioma.

### PDFImageBW

-   **strPath** *As String*

Extrae la imagenes del PDF en formato JPEG en Escala de grises. Devuelve
la carpeta donde se extrajeron las imagenes

### PDFR90

-   **strPath** *As String*

Rota las paginas 90 grados

GEFData.module
--------------

### DBTemplate

-   **stxDB** *As String\[\]*

Crea una plantilla de la base de datos que se le pasa como parametros.

### FileSqlLoad

-   **str** *As String*

### FileSqlLoad

-   **str** *As String*

### FileSqlLoad

-   **str** *As String*

### DBOpen

-   **stxDB** *As String\[\]*

Inicia una base de datos y si no existe la crea.

### DBSqlite

-   **stxDB** *As String\[\]*
-   *Optional* **strMod** *As String*

Inicia una base de datos o la crea y la inicia. Devuelve una conexion y
como parametro de entrada requiere una matriz con los parametros de la
base. Si la base de datos no existe, entonces crea una y la inicia. ' Si
la base de datos si existe, entonces puede hacer dos cosas, iniciarla o
crear una copia de respaldo y crear una base nueva. stxDB contiene los
paramentros de la base. 0 - DBHost. 1 - DBName. 2 - DBPath

### RecordNew

-   **connDB** *As Connection*
-   **strTable** *As String*
-   **stxDBFields** *As String\[\]\[\]*
-   **stxValues** *As String\[\]*

Inserta un registro nuevo en la base de datos. Si este es insertado
correctamente la funcion devuelve la clave de dicho registro, de lo
contratio devuelve -1

### RecordKey

-   **strTable** *As String*
-   **stxDBFields** *As String\[\]\[\]*

Devuelve el nombre del campo clave de la tabla. connDB As Connection es
laq conxión a la base de datos. strTable As String es el nombre de la
tabla sobre la que intenta saber que tipo de campo es. strFieldCheck As
String Es el campo a verificar. strValueCheck As String Es el valor del
registro para el campo a verificar. stxDBFields As String\[\] Es la
lista de todos los campos de la base de datos.

### RecordForeign

-   **connDB** *As Connection*
-   **strTable** *As String*
-   **strFieldCheck** *As String*
-   **strValueCheck** *As String*
-   **stxDBFields** *As String\[\]\[\]*

Devuelve la clave en la tabla foránea para un valor de texto si el campo
es referenciado o -1 si el campo no es referenciado o no existe el valor
en el campo a mostrar.

### RecordNewRef

-   **connDB** *As Connection*
-   **strTable** *As String*
-   **stxDBFields** *As String\[\]\[\]*
-   **stxValues** *As String\[\]*

Inserta un registro nuevo en la base de datos, ctnVal es una coleccion
opcional del pares de campo:valor.

### getFields

-   **connDB** *As Connection*
-   **strTbl** *As String*
-   **strMod** *As String*
-   *Optional* **stxFTitles** *As String\[\]\[\]*

Extraccion de la lista de campos de la tabla que se pasa como parametro.

### GetForeignKey

-   **strValue** *As String*
-   **conRef** *As Connection*
-   **strTable** *As String*
-   **strFieldKey** *As String*
-   **strFieldName** *As String*

Devuelve la clave del registro referenciado en otra tabla

### GetForeignKey

-   **strValue** *As String*
-   **conRef** *As Connection*
-   **strTable** *As String*
-   **strFieldKey** *As String*
-   **strFieldName** *As String*

Devuelve la clave del registro referenciado en otra tabla

### Chek4SQLscript

-   **strInput** *As String*

Devuelve un texto apto para consulatas SQL, quita los saltos del línea y
los caracteres no compatibles con sentencias SQL.

### Chek4SQL

-   **strInput** *As String*

Devuelve un texto apto para consulatas SQL, quita los saltos del línea y
los caracteres no compatibles con sentencias SQL.

### getTables

-   **connDB** *As Connection*
-   *Optional* **strMod** *As String*

Extraccion de la lista de tablas de la conexión. s ele pasan dos
parametros, la conexión a la base de datos y el tipo view|table

### getFieldInfo

-   **connDB** *As Connection*
-   **strTab** *As String*
-   **strFld** *As String*

### getIndex

-   **connDB** *As Connection*
-   **strTab** *As String*

### getTableFields

-   **connDB** *As Connection*
-   **strTab** *As String*

Extraccion de la informacion de la estructura de una tabla.

1.  Nombre de la tabla
2.  Nombre del campo
3.  Tipo de campo
4.  Valores únicos
5.  Valores nulos
6.  Clave primaria
7.  Auto incremento

### getViewFields

-   **connDB** *As Connection*
-   **strView** *As String*

Extraccion de la informacion de la estructura de una vista.

### getViewFields

-   **connDB** *As Connection*
-   **strView** *As String*

Extraccion de la informacion de la estructura de una vista.

### getViewFields

-   **connDB** *As Connection*
-   **strView** *As String*

Extraccion de la informacion de la estructura de una vista.

### SqlMake

-   **strTbl** *As String*
-   **stxFld** *As String\[\]\[\]*

### TableMake1

-   **cnx** *As Connection*
-   **stxParam** *As String\[\]*

Crea una tabla en la conexion que se le pasa como parametro. Donde el
orden de los paramentros dentro de la matriz debe ser el siguiente:

-   0 Nombre de la tabla
-   1 Nombre del campo clave
-   2 Nombre del resto de los campos
-   N Nombre del ultimo campo

### TableMake2

-   **cnx** *As Connection*
-   **stxParam** *As String\[\]*

Crea una tabla de combinacion de otras dos tablas en la conexion que se
le pasa como parametro. Donde el orden de los paramentros dentro de la
matriz debe ser el siguiente:

-   0 Nombre de la tabla 1
-   1 Nombre del campo clave 1
-   2 Nombre del campo a mostrar 1
-   3 Nombre de la tabla 21
-   4 Nombre del campo clave 2
-   5 Nombre del campo a mostrar 2

### ViewMake1

-   **cnx** *As Connection*
-   **stxParam** *As String\[\]*

Crea una Vista en la conexion que se le pasa como parametro. La funcion
trabaja con campos que se llaman TABLA+i y TABLA+n donde n es un numero
correlativo. Todos los vinculas seran left join y el orden sera por la
segunda columna. Por ejemplo para una tabla de productos donde hay un
campo color y otro clase y ambos son tablas relacionadas. Donde el orden
de los paramentros dentro de la matriz debe ser el siguiente:

-   0 Nombre de la tabla base
-   1 Este y en adelante, nombre las tablas secundarias

Para el ejemplo

-   0 productos
-   1 color
-   2 clase

Donde color tendra los campos colori, color1 y clase tendrá los campos
clasei, clase1. La tabla principal tendra los campos productosi,
productos1, productos2

### RecordNewTest

-   **cnx** *As Connection*
-   **strTbl** *As String*
-   **stxIns** *As String\[\]\[\]*

Inserta un registro nuevo en la base de datos.

### RecordNewRefTest

-   **cnx** *As Connection*
-   **stxTbl** *As String\[\]*
-   **stxIns** *As String\[\]\[\]*

Inserta un registro nuevo en la base de datos.

### RecordEdit

-   **connDB** *As Connection*
-   **strTable** *As String*
-   **stxValues** *As String\[\]*

Inserta un registro nuevo en la base de datos, ctnVal es una coleccion
opcional del pares de campo:valor.

### DataType

-   **int** *As Integer*

Devuelve el nombre del tipo de dato, la constante del gb.db

-   -2 = Blob
-   -1 = Serial
-   1 = Boolean
-   2 = Serial
-   4 = Integer
-   5 = Long
-   7 = Float
-   8 = Date
-   9 = String

### MakeDBProfile

-   **stx** *As String\[\]*

Esta función crea el texto para poner el en módulo DBFieldsTitles. COmo
parametro de entrada requiere una matriz de texto con todas la lineas
del archivo SQL de la base de datos.

### MakeViews

-   **stx** *As String\[\]*

Esta función crea una vista para cada tabla para poner luego en el
archivo SQL de creacion de base de datos.

### RWords

### UsualFieldsNames

GEFDesk.module
--------------

### FileChooser

-   *Optional* **strInputPath** *As String*
-   *Optional* **strFilter** *As String*

Selecciona la ruta completa de un archivo, con el nombre y las
extensiones. Como opcional se puede pasar un directorio que es a donde
se dirigira el filechooser cuando se abra. También como opcional se pued
epasar un filtro de tipos de archivos separados por :, por ejemolo
"txt:csv"

### DirChooser

-   *Optional* **stInputPath** *As String*

Selecciona la ruta de un directorio mediante una caja de dialogo.

GEFMedia.module
---------------

### PlaySound

-   **strPath** *As String*

Esta funcion reproduce un archivo OGG comn el programa mplayer.
Dependenciaas: mplayer. Devuelve el numero PID del proceso.

GEFMoon.module
--------------

### monPhase

-   **datDate** *As Date*

### LocaltoUTC

-   **datex** *As Date*

### UTCtoLocal

-   **datex** *As Date*

### JuliantoDate

-   **td** *As Float*

### DatetoJulian

-   **datex** *As Date*

GEFStarter.module
-----------------

### Initiator

Funcion que carga los parametros por defecto del programa. 1 ok, 0
Matrices iguales pero no se cargo todo -1 matrices distintas

### Dependences

Analisis de dependencias, si hay paquetes que falta instalar se procede
a instalarlos y la funcion retorna la cantidad remanente de paquetes,
siendo cero si se instalaron todos.

### Terminator

Funcion que guarda las configuraciones que se modificaron en el programa
antes de cerrarlo.

GEFSys.module
-------------

### Resume

### DeFiBro

Devuelve el administrador de archivos por defecto.

### DistroNoshell

Devuelve la distribución instalada xmi

### Distro

### ArqSO

Devuelve la Arquitecura del Sistema Operativo

### ArqMicro

Devuelve la Arquitecura del Procesador

### MicroType

Devuelve el tipo de Procesador

### Ram

Devuelve cantidad de Ram en MB tambien con free -m

### ComputerName

Devuelve el nombre del pc

### CurrentUser

Devuelve el usuario activo

### GetProjectInfo

-   **strPath** *As String*

Devuelve una matriz con los datos de un projecto de gambas, como
parametro de entrada requieres el direcotrio raíz del proyecto.

### GetSystemUsers

Devuelve el una lista de usuarios del sistema Linux.

### AllUsers

Devuelve los usuarios que hemos creado

### WGroup

Devuelve el Grupo de trabajo del pc

### SysFile

-   **ruta** *As String*

Devuelve el sistema de ficheros

### Vgambas

Devuelve la versión de gambas intalada en el pc

### ProjInfo

-   *Optional* **strPath** *As String*

Devuelve una matriz con la información del projecto alojada en el
archivo ".project" si no se le pasa el camino del archivo .project del
que se desea extraer la información la funcion devolvera los datos del
proyecto local. Luego, el orden de cada item es el siguiente:

0.  Title
1.  Description
2.  Authors
3.  Vendor
4.  Version
5.  Component
6.  Language
7.  Startup
8.  Icon

### Ls

-   **Ruta** *As String*

Devuelve un listado del directorio pasado en ruta

### AddressIP

Devuelve la IP del equipo, solo funciona bajo OS con Systemd, para ello
usa shell y el comando "ip addr show".

### LANIP

-   *Optional* **strBase** *As String*

Devuelve las IP v4 de la red local, como parametro de entrada requiere
la direccion IP base, por ejemplo "192.168.1" pero si no se le pasa el
parametro entonces usa la ip de la computadora donde se este ejecutando
el programa quitandole el último número. El formato de salida de cada
item de la matriz es host-name\[tab\]8.8.8.8

### LastNIP

Devuelve el último digito de la Ip

### Hdserial

Devuelve el número de serie del disco duro para utilizarlo como Pk en la
BDD

### UUIDswap

### LastUpgrade

Devuelve la Fecha de la ultima vez que se actualizo el sistema

### PkgStat

-   **strPkg** *As String*

Devuelve el estado respecto a la instalacion de un paquete. Requiere
como parametro de entrada el nombre exacto del paquete.

### XDGFolder

Devuelve una matriz de texto con las rutas de las carpetas de musica,
imagenes, documentos etc. del directorio /home/user

### PkgDep

-   **stxPackages** *As String\[\]*

Verifica si los paqutes que se le pasan como parametros en una matriz,
estan instalados en el sistema, devuelve una matriz con los paquetes que
no estan instalados, si todo lo estuviera la matriz devuelta estara
vacia.

GEFUtility.module
-----------------

### DirParent

-   **strPath** *As String*

Devuelve el directorio padre de otro que se pasa como parámetro.

### DirBase

-   **strPath** *As String*

Devuelve el directorio sin la ruta hasta el mismo, es decir devuelve el
nombre del directorio. si se pasa "/home/usuario/musica" devolvera
"musica"

### CodeStructure

Crea una matriz con las estructuras del lenguaje gambas que, por
ejemplo, puede servir para iterpretar el código.

### CodeTag

-   **str** *As String*

Analiza de una cadena de texto que se le pasa como parámetro y en el
contexto de un fragmento de código, devuelve que es esa frase.

### CodeMthod

-   **stxPart** *As String\[\]*

### RelationProj

-   **stxClass** *As String\[\]*
-   **stxMet** *As String\[\]*
-   **stxCod** *As String\[\]*

Lee las matrices de métodos y codigo del proyecto para luego analizar
las relaciones entre estos generando una matrix con estas relaciones.

### DokuProj

-   **strPath** *As String*

Lee todas las clases y los módulos de un proyecto gambas, recaba
informacion del mismo de forma orenada y lo plasma en una matriz de
texto.

### DokuHtml

-   **strPath** *As String*

Devuelve un html con las funciones de un módulo y todos los datos de
estas, comoparametro de entrada requiere el directorio raiz a partir del
cual buscar los módulos.

### DokuHtm2

Devuelve un html con las funciones de un módulo y todos los datos de
estas, comoparametro de entrada requiere el directorio raiz a partir del
cual buscar los módulos.

### Dokuwiki

-   **strPath** *As String*

Devuelve un wiki con las funciones de un módulo y todos los datos de
estas, comoparametro de entrada requiere el directorio raiz a partir del
cual buscar los módulos.

### FilesNew

-   **strDirectory** *As String*
-   *Optional* **stxFilesOpt** *As String\[\]*
-   *Optional* **strFilterOpt** *As String*

Devuelve una lista de archivos de un directorio que se pasa como
parametro. Opcionalmente se puede pasar como parametro una lista de
archivos existentes los cuales seran omitidos de la lista de salida si
es que son encontrados y un filtro de extensiones de archivo de l estilo
mp3:ods:txt

### FilesExist

-   **strDirectory** *As String*
-   *Optional* **stxFilesOpt** *As String\[\]*
-   *Optional* **strFilterOpt** *As String*

Devuelve una lista de archivos de un directorio que coinciden con los de
la lista que se le pasa como parametro, es decir verifica que existen.
Opcionalmente se le puede pasar un parametro de filtro de extensiones
para acotar la busqueda.

### FilesNone

-   **strDirectory** *As String*
-   *Optional* **stxFilesOpt** *As String\[\]*
-   *Optional* **strFilterOpt** *As String*

Devuelve una lista de archivos que no existen en el directorio, es
necesario parar una lista de archivos para contrastar.

### FilesList

-   **strPath** *As String*

Devuelve una lista de archivos.

### FileNospace

-   **stxParam** *As String\[\]*
-   *Optional* **strDelim** *As String*
-   *Optional* **strExt** *As String*

Devuelve un texto, nombre de arcivo concatenando todos los fragmentos
que se le pase y pone todo en minusculas quita los caracteres fuera del
rango 97-122 de ascci.

### FileVersion

-   **strInputPath** *As String*

Devuelve un texto con la versión del archivo que se le pasa como ruta.
Usa el comando file de la terminal.

### FileLoad

-   **strPath** *As String*

Devuelve una matriz de texto donde cada ítem es un renglón del archivo
de texto. Si el renglón esta vacio en el archivo de texto, es decir se
trata de unallinea vacia, esta no se pasa a la martiz, por lo tanto el
resultado es un retorno sin lineaas en blanco.

### FileLoadRaw

-   **strPath** *As String*

Devuelve una matriz de texto donde cada ítem es un renglón del archivo
de texto.

### FileLog

-   **strPath** *As String*
-   **strMsg** *As String*

Agrega un la fecha actual y un texto que se pasa como parametro a un
archivo log que tambien se pasa como parametro.

### FileTemplate

-   **strFileSeed** *As String*
-   **strFileProduct** *As String*
-   **stxTag** *As String\[\]*
-   **stxDat** *As String\[\]*

Tomando un archivo template reemplaza las etiquetas por valores. Retorna
una matriz con una lista de archivos, primero el producto y luego el
pdf, en cas que alguno de estos no exista en la posicion de la matriz
hara una cadena vacia.

### FileReplace

-   **strFileName** *As String*
-   **strSearch** *As String*
-   **strReplace** *As String*

Busca una cadena de texto en un archivo de entrada y la reemplaza por
otra y luego pone todo en un archivo de salida. Archivos en modo input

### ArrangePath

-   **strPathRaw** *As String*

Devuelve una ruta sin los saltos del línea ni caracteres problemáticos

### FileCRC32

-   **stInputPath** *As String*
-   *Optional* **strCase** *As String*

Obtencion del crc32 de un archivo del que se pasa como parametro la ruta
completa, como parametro opcional strCase puede ser U o L que parara
todo a Ucase o Lcase.

### FileExifPages

-   **strPath** *As String*

Devuelve la cantidad de páginas del archivo si no tiene el tag entonces
se devuelve 1. Para la extraccion de esta informacion se usa ExifTool.

### FileExifRaw

-   **strPath** *As String*

Devuelve una matriz con los metadatos extraídos por el programa de la
terminal ExifTool.

### Timestamp

-   **datTime** *As Date*

Retorna una cadena de texto con el tiempo en formato "yyyymmddhhnnss".
Desde años a segundos.

### Timestampu

-   **datTime** *As Date*

Retorna una cadena de texto con el tiempo en formato "yyyymmddhhnnssuu".
Desde años a milisegundos con tres digitos.

### TypeVar

-   **intType** *As Integer*

Función que devuelve el tipo de variable como una palabra. Como
parametro de entrada requiere un numero entero.

### MouseButton

-   **intKey** *As Integer*

Funcion que retorna el nombre en ingés del boton del ratón que se ha
presionado.

### ArrayInclude

-   **stxList** *As String\[\]*
-   **strFind** *As String*

Quita de la lista los textos que no tengan la cadena de texto pasada
como parametro

### ArrayMax

-   **inx** *As Integer\[\]*

Devuelve el maximo valor de lalista de numeros enteros.

### Between

-   **str** *As String*
-   **str1** *As String*
-   **str2** *As String*

Devuelve la cadena de texto comprendida entre las dos que se pasan como
parámetro

### ArrayExclude

-   **stxList** *As String\[\]*
-   **strFind** *As String*

Quita de la lista los textos que tengan la cadena de texto pasada como
parametro

### FileInfo

-   **strFilePath** *As String*

Devuelve una matriz con datos del archivo que se le pasa como ruta.

### NamingCon

Devuelve una lista de nombres de controles y su abreviación de tres
caracteres.

### HMStoSeconds

-   **strTime** *As String*

Devuelve el tiempo en segundos de una cadena que se le pase con el
formato HH:MM:SS HORAS:MINUTOS:SEGUNDOS.

### SecondsToHMS

-   **intTime** *As Integer*

Devuelve el tiempo en una matriz donde: 0-Y 1-M 2-D 3-H 4-N 5-S y como
parametro de entrada requiere el tiempo en segundos

### MkConfXml

-   **strXmlPath** *As String*

Creacion de archivo de configuracion inicial xml.

### ListDeldup

-   **stxInput** *As String\[\]*

Elimina elementos duplicados de una lista, requiere una String\[\] y
devuelve una String\[\].

### WhereRun

Indica si el programa se esta ejecutando desde el IDE o desde un
ejecutable solo utilizando código de gambas.

### RListDir

-   **strPath** *As String*

Devuelve una lista de directorios que se encuentran en la ruta que se
pasa como parametro.

### RListFiles

-   **strPath** *As String*
-   *Optional* **stxExt** *As String\[\]*

Devuelve una lista de directorios que se encuentran en la ruta que se
pasa como parametro.

### ListFiles

-   **strPath** *As String*
-   *Optional* **stxExt** *As String\[\]*

Devuelve una lista de archivos que se encuentran en la ruta que se pasa
como parametro.

### DirGambas

-   **strPath** *As String*

Analiza si el directorio que se le pasa como paramentro de entrada es un
direcotio de un proyecto gambas.

### ScanDir

-   **strDir** *As String*
-   *Optional* **strExt** *As String*

Escanea un directorio que se pasa como parametro en busca de archivos se
puede filtrar con una lista de extensiones separadas por dos puntos ":".

GEFValidator.module
-------------------

### VEmail

-   **strAddress** *As String*

Validación de una direccion de correo electrónico

### ArrangeParagraph

-   **strInText** *As String*

### OnlyTextParenthesis

-   **strInput** *As String*

Validación de solo texto, espacio, punto y coma entre parentesis.

### OnlyLeters

-   **strInput** *As String*

Validación de palabras.

### CaptionCheck

-   **strInput** *As String*

Validación del texto de un control en KDE el texto de los botones por
ejemplo tiene un simbolo & delante del texto.

### NoSymbols

-   **strInput** *As String*

Solo letras y números, y las letras sin acentos.

### OnlyNumbers

-   **strInput** *As String*

Devuelve un texto solo con numeros.

### OnlyCyrilic

-   **strInput** *As String*

Validación de palabras.

### OnlyText

-   **strInput** *As String*

Validación de solo texto, Numeros NO, Doble espacio NO, Espacio Al
principio y/o al final NO.

### OnlyTextCyrilic

-   **strInput** *As String*

Validación de solo texto, Numeros NO, Doble espacio NO, Espacio Al
principio y/o al final NO.

### ConvertPath

-   **strInput** *As String*

Descodifica los caracteres hexadecimales en las URI's recorriendo la
cadena dada Params: strInput la URintPos a descodificar Return: la
URintPos descodificada

### ChkExt

-   **strExt** *As String*

### StrColor

-   **strHex** *As String*

Convierte el color pasado en formato texto hexagesimal, como por ejemplo
\#000000 en un numero para poder ser usado en el código de gambas.

### SplitText

-   **strText** *As String*
-   *Optional* **strCut** *As String*

Particiona un texto dado como parametro, si el segundo argumento, que es
la palabra o letra de corte es nula, cada item de la matriz sera un
caracter de la cadena de texto, si , por el contrario, se pasa un
parametro de corte y este existe en la cadena, esta sera dividida por
este parametro. Pero en el caso que se pase una frase de corte y esta no
exista se devolvera la misma fras eoriginal sin alterar como item cero
de la matriz.

### VDNISpain

-   **strDNI** *As String*

Validación de un dni español

### VRUTChile

-   **strRutIn** *As String*
-   **strDigRut** *As String*

### OnlyChar

-   **strInput** *As String*

Devuelve un texto con sus caracteres.

### Capital

-   **strInput** *As String*

Devuelve un texto con la primera letra en mayusculas y todas las
siguientes en minúsculas.

GEFWeb.module
-------------

### ListHtml

-   **strList** *As String*
-   **strSep** *As String*

Devuelve una lista HTML y se le pasa una cadena de texto y un separador,
generalmente "\\n"

### ReadLyric

-   **strArtist** *As String*
-   **strTitle** *As String*

### LyricWeb

-   **strArtist** *As String*
-   **strTitle** *As String*
-   *Optional* **strSite** *As String*

### ArtistWeb

-   **strArtist** *As String*
-   *Optional* **strSite** *As String*

### SpecieWeb

-   **strSpecie** *As String*
-   **strLang** *As String*

Devuelve una url del stio web de la especie que se pasa como parametro.

### ImageSearchWeb

-   **strWords** *As String*
-   **strLang** *As String*
-   **strEngine** *As String*

Devuelve una url del stio web de la especie que se pasa como parametro.
