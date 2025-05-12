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

1. Clona el repositorio:

```bash
git clone https://github.com/tu-usuario/IWellness-DB.git
cd IWellness-DB
```

2. Levanta el contenedor
```bash
docker-compose up -d
```
4. Verifica que el contenedor este corriendo
Puedes abrir una terminal (no la misma de donde esta corriendo la BD) para verificar:
docker ps
O desde la aplicación de Docker puedes revisar.
