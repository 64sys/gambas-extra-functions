![](./tools-header.jpg)

# gambas-extra-functions
Compilation of utilities and functions developed by the gambas comunity

### Module Utilities

#### ArrangePath
Devuelve una ruta sin los saltos del línea ni caracteres problemáticos requiere come parametro de entrada una ruta.

#### ArrayExclude
Quita de la lista los textos que tengan la cadena de texto pasada como parametro.

#### ArrayInclude
Quita de la lista los textos que NO tengan la cadena de texto pasada como parametro.

#### Capital
Devuelve un texto con la primera letra en mayusculas y todas las siguientes en minúsculas.

#### Chek4SQL
Devuelve un texto apto para consulatas SQL, quita los saltos del línea y los caracteres no compatibles con sentencias SQL.

#### ConvertPath
Devuelve una ruta con los caracteres hexadecimales decodificados en las URI's que se le pase.

#### CRC32
Obtencion del crc32 de un archivo del que se pasa como parametro la ruta completa, como parametro opcional strCase puede ser U o L que parara todo a Ucase o Lcase.

#### DirChooser
Selecciona la ruta de un directorio mediante una caja de dialogo.

#### FileChooser
Selecciona la ruta completa de un archivo, con el nombre y las extensión. Como opcional se puede pasar un directorio que es a donde se dirigira el filechooser cuando se abra.

#### FilesNew
Devuelve una lista de archivos de un directorio que se pasa como parametro. Opcionalmente se puede pasar como parametro una lista de archivos existentes los cuales seran omitidos de la lista de salida si es que son encontrados y un filtro de extensiones de archivo de l estilo mp3:ods:txt

#### FilesExist
Devuelve una lista de archivos de un directorio que coinciden con los de la lista que se le pasa como parametro, es decir verifica que existen. Opcionalmente se le puede pasar un parametro de filtro de extensiones para acotar la busqueda.

#### FilesNone
Devuelve una lista de archivos que no existen en el directorio, es necesario parar una lista de archivos para contrastar.

#### FileExif
Devuelve una matriz con los datos extraídos por el programa de la terminal ExifTool.

#### FileInfo
Devuelve una matriz con datos del archivo que se le pasa como ruta.

#### FileNospace
Devuelve un texto, nombre de arcivo concatenando todos los fragmentos que se le pase y pone todo en minusculas quita los caracteres fuera del rango 97-122 de ascci.

#### FileVersion
Devuelve un texto con la versión del archivo que se le pasa como ruta. Usa el comando file de la terminal.

#### file_replace
Sirve para reemplazar una cadena en un archivo de texto, como por ejemplo un .html que sw muestra en un webview.

#### GetForeignKey
Devuelve la clave del registro referenciado en otra tabla
 
#### HMStoSeconds
Devuelve el tiempo en segundos de una cadena que se le pase con el formato HH:MM:SS HORAS:MINUTOS:SEGUNDOS.

#### ListDeldup
Elimina elementos duplicados de una lista, requiere una String[] y devuelve una String[].

#### MkConfXml
Creacion de archivo de configuracion inicial xml.

#### MouseButton
Funcion que retorna el nombre en ingés del boton del ratón que se ha presionado.

#### NamingCon
Devuelve una lista de nombres de controles y su abreviación de tres caracteres.

#### ScanFolder
Escanea una carpeta que se pasa como parametro en busca de archivos se puede filtrar con una lista de extensiones separadas por comas.

#### Timestamp
Retorna una cadena de texto con el tiempo en formato "yyyymmddhhnnss".

#### TypeVar
Función que devuelve el tipo de variable como una palabra. Como parametro de entrada requiere un numero entero.

#### WhereRun
Devuelve si el programa gambas se esta ejecutando desde el IDE o desde un .gambas.

### Module System

#### AddressIP
Devuelve las Ips configuradas en el equipo

#### AllUsers
Devuelve los usuarios que hemos creado

#### ArqMicro
Devuelve la Arquitecura del Procesador

#### ArqSO
Devuelve la Arquitecura del Sistema Operativo

#### ComputerName
Devuelve el nombre del pc

#### CurrentUser
Devuelve el usuario activo

#### Distro
Devuelve la distribución instalada

#### DistroShort
Devuelve la distribución instalada en modo corto

#### DskType
Devuelve el entorno del escritorio

#### Hdserial
Devuelve el número de serie del disco duro para utilizarlo como Pk en la BDD

#### LastNIP
Devuelve el último digito de la Ip

#### LastUpgrade
Devuelve la Fecha de la ultima vez que se actualizo el sistema

#### Ls
Devuelve un listado del directorio pasado en ruta

#### MicroType
devuelve el tipo de Procesador

#### PkgStat
Devuelve el estado respecto a la instalacion de un paquete. Requiere como parametro de entrada el nombre exacto del paquete.

#### ProjectInfo()
Devuelve una matriz con la información del projecto alojada en el archivo ".project", donde el orden de cada item es el siguiente:
0 Title
1 Description
2 Authors
3 Vendor
4 Version
5 Component
6 Language
7 Startup
8 Icon

#### Ram
Devuelve cantidad de Ram en MB tambien con free -m

#### Resume
Devuelve un resumen de varias funciones: Distro(), ArqSO(), ArqMicro(), MicroType(), Ram(), ComputerName(), CurrentUser(), AllUsers(), DskType(), WGroup(), Vgambas(), LastUpgrade()

#### SysFile
Devuelve el sistema de ficheros

#### UUIDswap

#### Vgambas
devuelve la versión de gambas intalada en el pc

#### WGroup
Devuelve el Grupo de trabajo del pc

#### XDGFolder


### Module Database
This module groups the functions focused to the databases and the intrraccion with them.


### DBSqlite
Inicia una base de datos o la crea y la inicia. Si la base de datos no existe, entonces crea una y la inicia.
stxDB As String[] donde 0=DBHost. 1=DBName. 2=DBPath
strMod As String 'Optional'
Devuelve una conexion y como parametro de entrada requiere una matriz con los parametros de la base.
Connection

### getTableFields
Extraccion de la informacion de la estructura de la tabla pasada como parametro. Devuelve una matriz de texto con los parametros de todos los campos de la tabla en el siguiente formato de 13 parametros separados por ":"
00 TableName
01 FieldName [From gb.db]
02 FieldType [From gb.db]
03 Unique [YU|NU]
04 Null / Not Null [YN|NN]
05 Primary Key [YK|NK]
06 Autoincrement [YA|NA]
07 ForeignTableName
08 ForeignFieldIndexName
09 ForeignFieldShowName
10 Title
Para el caso de campos que no tienen claves foráneas las posiciones 7,8,9 seran vacias "".

Para las vistas (que ademas son las que se usan en los grisdviews para mostrar los datos)
00 ViewName
01 FieldName [From gb.db]
02 FieldType [From gb.db]
03 Order ["asc" | "desc" | ""]
04 Filter Type ["="/"<>" | ">"/"<" | ">="/"<=" | "like"/"not like" | "in" ] *
05 Filter Value
06 Width
07 Spare > Future for Functions
08 Spare
09 Spare
10 Title

* =	Equal
<>	Not equal. Note: In some versions of SQL this operator may be written as !=
>	Greater than
<	Less than
>=	Greater than or equal
<=	Less than or equal
BETWEEN	Between an inclusive range
LIKE	Search for a pattern
IN	To specify multiple possible values for a column

connDB As Connection
strTab As String
String[] 

### getViewFields
Extraccion de la informacion de la estructura de una vista.

connDB As Connection, strView As String) As String[]

### RecordDelete
connDB As Connection, strTable As String, stxDBFields As String[], intKey As Integer
Integer
Devuelve -1 si no existe o un numero (la clave) si existe el texto que se pasa como parametro junto con la tabla y el campo.

### RecordExist
connDB As Connection, strTable As String, strFieldVal As String, strFieldKey As String, strValue As String
As Integer
Devuelve -1 si no existe o un numero (la clave) si existe el texto que se pasa como parametro junto con la tabla y el campo.

### RecordForeign
connDB As Connection
strTable As String
strFieldCheck As String
strValueCheck As String
stxDBFields As String[]
As String
Devuelve la clave en la tabla foránea para un valor de texto si el campo es referenciado o -1 si el campo no es referenciado o no existe el valor en el campo a mostrar.

### RecordKey
connDB As Connection Es laq conxión a la base de  datos
strTable As String Es el nombre de la tabla sobre la que intenta saber que tipo de campo es
stxDBFields As String[]
As String

Devuelve el nombre del campo clave de la tabla.

strFieldCheck As String Es el campo a verificar.\nstrValueCheck As String Es el valor del registro para el campo a verificar.\nstxDBFields As String[] Es la lista de todos los campos de la base de datos.

### RecordNew
connDB As Connection, strTable As String, stxDBFields As String[], stxValues As String[])
As Integer
Inserta un registro nuevo en la base de datos. Si este es insertado correctamente la funcion devuelve la clave de dicho registro, de lo contratio devuelve -1

### RecordNewRef
connDB As Connection, strTable As String, stxInsert As String[], stxValues As String[])
As Integer
Inserta un registro nuevo en la base de datos, ctnVal es una coleccion opcional del pares de campo:valor.

### RecordWrite
connDB As Connection, strTable As String, stxEdit As String[], stxValues As String[])
As Integer
Inserta un registro nuevo en la base de datos, ctnVal es una coleccion opcional del pares de campo:valor.

