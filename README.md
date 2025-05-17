# 🧠 IWellness-DB

Repositorio que contiene la configuración de la **base de datos MySQL** del ecosistema **IWellness**.

Esta base de datos actúa como destino final de la información procesada por el sistema. Recibe datos desde una cola de mensajes (RabbitMQ) mediante un **consumer en Python**, y los envía a un script que realiza el procesamiento final antes de ser entregado al **frontend**.

> 📌 **Nota:** Este repositorio funciona en conjunto con [`IWellness_Data_Services`](https://github.com/IWellnessTesis/IWellness_data_services/tree/main).

---

## 🐬 Base de datos MySQL

La base de datos se ejecuta en un contenedor Docker utilizando la última versión oficial de **MySQL**.

### 🔧 Configuración por defecto:

| Parámetro         | Valor         |
|------------------|---------------|
| Host             | `localhost`   |
| Puerto           | `3306`        |
| Usuario          | `root`        |
| Contraseña       | `root`        |
| Base de datos    | `db_iwellness`|

---

## 🚀 Instrucciones para levantar el contenedor
Nota: Instala Docker Desktop para verificar que el contenedor este corriendo

### 1. Clona el repositorio:

```bash
git clone https://github.com/tu-usuario/IWellness-DB.git
cd IWellness-DB
```

### 2. Levanta el contenedor
```bash
docker-compose up -d
```
📌 **Nota:**  Este comando: descarga la imagen de MySQL(si no la tienes), creará el volumen, ejecutará el init.sql y dejara corriendo el contenedor 

### 3. Verifica que el contenedor este corriendo
Puedes abrir una terminal (no la misma de donde esta corriendo la BD) para verificar:
```bash
docker ps
```
📌 **Nota:**  Desde la aplicación de Docker también puedes revisar.

### 4. Verifica que las tablas se hayan creado en la Base de Datos
Pudes conectarte al contenedor
```bash
docker exec -it mysql_iwellness mysql -u root -p db_iwellness
```
Recuerda la contraseña: root
Y dentro del cliente de MySQL:
```bash
SHOW TABLES;
```
También lo puedes verificar conectandote a un adminsitrador de base de datos para verificar. Recomiendo DBeaver. 

### *Opcional*. Elimina el contenedor y el volumen
Recuerda: Docker solo ejecuta init.sql la primera vez que crea la base de datos, es decir, cuando el volumen (msql_data) esta vacio o no existe
Si necesitas volver a ejecutar el init, realiza lo siguiente:
```bash
docker-compose down -v
```
Este comando: 
- Detiene y elimina el contenedor mysql_iwellness.
- Elimina el volumen persistente mysql_data, que es donde se guarda toda la información de la base de datos.

📌 **Nota:**  Si no eliminas el volumen, MySQL detecta que la base de datos ya existe, y no ejecutará de nuevo tu archivo init.sql. Entonces, si haces cambios al init.sql o simplemente quieres empezar desde cero, debes eliminar el volumen para forzar a MySQL a inicializar todo de nuevo.
