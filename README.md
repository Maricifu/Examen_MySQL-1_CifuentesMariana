# FILTRO MYSQL "Los Olímpicos"  ;3

- Presentado por Mariana Cifuentes Ramírez

## Descripción

Surge la problemática de optimizar el uso de espacios en los complejos polideportivos. Dada la subdivisión de complejos deportivos en aquellos destinados a un único deporte y los polideportivos, es esencial garantizar una distribución eficiente de las áreas designadas para cada deporte en los complejos polideportivos.

La pregunta clave es, cómo maximizar la utilización de los espacios disponibles en los complejos polideportivos, considerando las diferentes áreas destinadas a distintos deportes con indicadores de localización específicos. La optimización deberá tener en cuenta la variedad de deportes que se celebran en un mismo complejo polideportivo, garantizando la eficacia en la organización de eventos y minimizando posibles conflictos de programación.

Además, la gestión de eventos en cada complejo añade complejidad al escenario. ¿Cómo asegurar que los eventos programados en una sede no entren en conflicto con la disponibilidad de áreas específicas en los complejos polideportivos? Esto implica coordinar fechas, duraciones, participantes y comisarios de manera eficiente, evitando superposiciones y garantizando un flujo adecuado de las actividades deportivas.

La necesidad de mantener una lista actualizada de comisarios y su participación en eventos plantea otra dimensión de la problemática. ¿Cómo gestionar eficazmente la asignación de comisarios a eventos específicos, considerando sus roles como jueces u observadores, para asegurar una cobertura adecuada en cada competición?

Finalmente, la gestión del equipamiento necesario para eventos y mantenimiento también representa un desafío. ¿Cómo garantizar que cada evento cuente con el equipamiento requerido y que se realice un mantenimiento efectivo de las instalaciones sin afectar la realización de competiciones?

La problemática central radica en la optimización integral de los recursos y espacios en las sedes olímpicas, particularmente en los complejos polideportivos, para lograr una gestión eficiente y exitosa de los eventos deportivos.

1. **Complejos Deportivos:**
    - Los complejos deportivos están especializados en un único deporte.
    - Cada complejo deportivo tiene una localización específica, un jefe de organización individual y un área total ocupada.
2. **Complejos Polideportivos:**
    - Los complejos polideportivos albergan múltiples deportes, con áreas designadas para cada uno y un indicador de localización.
    - Al igual que los complejos deportivos, los polideportivos tienen una localización, un jefe de organización individual y un área total ocupada.
3. **Información Específica para Cada Tipo de Sede:**
    - Se mantiene información específica para cada tipo de sede, como el número de complejos y su presupuesto aproximado.
4. **Eventos en los Complejos:**
    - Cada complejo, ya sea deportivo o polideportivo, celebra eventos.
    - Para cada evento se registra información detallada, incluyendo fecha, duración, número de participantes y número de comisarios.
5. **Comisarios y su Involucramiento en Eventos:**
    - Se mantiene una lista de todos los comisarios, identificando si desempeñan el papel de juez u observador en cada evento.
    - La relación entre comisarios y eventos se registra para rastrear su participación específica.
6. **Equipamiento Necesario:**
    - Tanto para eventos como para el mantenimiento de los complejos, se requiere cierto equipamiento específico, como arcos, pértigas, barras paralelas, etc.

    
## Consultas a realizar (Propones en los campos a aplicar) ##

---

1. Consulta de Todos los Eventos en un Complejo Deportivo Específico.
2. Consulta de Comisarios Asignados a un Evento en Particular.
3. Consulta de Todos los Eventos en un Rango de Fechas.
4. Consulta del Número Total de Comisarios Asignados a Eventos.
5. Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.
6. Consulta de Eventos con Número de Participantes Mayor que la Media.
7. Consulta de Equipamiento Necesario para un Evento Específico.
8. Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico.
9. Consulta de Complejos Polideportivos sin Eventos Celebrados.
10. Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.


## Requerimientos técnicos

Para desarrollar dicho exámen se deben tener los siguientes puntos en cuenta: 

- Se puede realizar en equipos de 1 personas, las cuales deben aportar periódicamente al repositorio de GitHub. Para este caso, se creará un repositorio privado llamado “Examen_MySQL-1_Apellido1Nombre1” con dicho fin. Este será compartido como colaborador al correo [pedrogomez.campuslands@gmail.com](mailto:pedrogomez.campuslands@gmail.com)
- En dicho repositorio se agregarán tres archivos, uno para el diagrama E-R, otro para la estructura y otro para las consultas, todos con las reglas de documentación anteriormente mencionadas. Este primero vendrá siendo a criterio del diseñador si lo quiere cambiar o no.
- Solamente se permitirá usar MySQL para la persistencia de datos, pues la idea es realizar las consultas pertinentes.


# Criterios y Rúbrica Evaluativa

De acuerdo a lo establecido y solicitado, se muestra la rúbrica evaluativa a tener en cuenta:

### 1. Estructura de Base de Datos con Diagrama E-R (25%)

- **0 puntos**: No se creó ninguna base de datos interna a manera de SQL o Diagrama E-R.
- **5 puntos**: Se inicializa un archivo SQL para la creación de la base de datos, pero no tiene contenido alguno o no está alineado al Diagrama E-R propuesto.
- **10 puntos**: Se inicializa un archivo SQL para la creación de la base de datos, pero cumple solamente con el 50% de lo representado en el Diagrama E-R propuesto por el diseñador.
- **20 puntos**: Se inicializa exitosamente un archivo SQL, donde se crea al 100% el Diagrama E-R propuesto por el diseñador normalizado hasta la 3FN.

### 2. Inserción de Datos a la Base de Datos (25%)

- **0 puntos**: No se cumple alguna inserción en la base de datos, o intento de creación de un archivo SQL que haga dicha acción.
- **5 puntos**: Se inicializa un archivo SQL para la creación de los datos de la base de datos, pero no tiene contenido alguno o no está alineado al Diagrama E-R propuesto.
- **10 puntos**: Se inicializa un archivo SQL para la creación de datos de la base de datos, pero solamente llena hasta 5 datos por tabla en la base de datos, o no está alineado a la propuesta del Diagrama E-R.
- **20 puntos**: Se crea exitosamente el archivo SQL, el cual inserta de 10 a más datos por tabla en la Base de Datos, estando 100% alineados al Diagrama E-R propuesto.

### 3. Consultas funcionales (40%, los cuales se calificarán individualmente)

- **0 puntos**: No se evidencia la creación de dicha consulta o intento de ella, al igual que un archivo SQL que las respalde o mencione. También aplica su no funcionamiento o error en consola.
- **5 puntos**: Se crea la consulta en el archivo SQL con su documentación, pero los resultados que dan son incorrectos o simplemente no cumple con lo requerido por el enunciado.
- **10 puntos**: Se crea de manera exitosa el comando en el archivo SQL, con un funcionamiento del 100% de salida alineado a la solicitud dada.