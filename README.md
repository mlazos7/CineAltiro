# CineAltiro-
Proyecto Fundamentos de Ingenieria en Software 


Instalacion de la aplicacion en Windosws

1)Instalar python 2.7.10 https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi

2)Agregar la ruta a las variables de entorno ( les dejo un tutorial)
https://devcode.la/tutoriales/instalacion-de-python-27-en-windows-8/
Una vez configurada la ruta abran la terminal y ingresen "python" si les sale el interprete todo va bien

3)Al instalar python tambien se instala pip, para poder usarlo tambien lo agregan a las variables
 de entorno C:\Python27\Scripts\ y lo actualizan a la ultima version:  python -m pip install -U pip
 

4)Instalar Django:  pip install Django==1.8.2

5)Instalar Pillow: pip install Pillow

6)Instala mysql para python  https://pypi.python.org/packages/2.7/M/MySQL-python/MySQL-python-1.2.5.win32-py2.7.exe#md5=6f43f42516ea26e79cfb100af69a925e y siguiente a todo.


7)Descomprimam todos los archivos del RAR  EN ESTE DIRECTORIO C:\Python27\Lib\site-packages


8) Instalen xampp , fijense de que tenga apache,mysql,phpmyadmin tickeados al momento de instalarlo
https://www.apachefriends.org/xampp-files/5.5.24/xampp-win32-5.5.24-0-VC11-installer.exe

9) corran xampp (fijense de correr apache y mysql) y entren al phpmyadmin y creen una base de datos llamada "cinealtiro"

10) tickeen la base de datos y importen el "cinealtiro.sql" que esta dentro de la carpeta CineAltiro del rar, con eso poblan toda la bd.



11) instalar djnago geoposition https://github.com/philippbosch/django-geoposition/

12) instalar django disqus http://django-disqus.readthedocs.org/en/latest/installation.html

13) instalar django easy registration https://github.com/hcosta/django-easyregistration

 Ingresen desde la consola a la ruta C:/Python27/Lib/site-pachages/CineAltiro/Pinkys
y  ponen: python manage.py migrate y luego: python manage.py runserver .

 Si hicieron todo bien  , pueden ver la aplicacion en el navegador ingresando localhost:8000/home 





