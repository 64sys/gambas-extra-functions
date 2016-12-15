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

#### getDBinfo
Extraccion de la informacion de la estructura de la base de datos

