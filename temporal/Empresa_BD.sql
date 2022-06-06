drop DATABASE empresa;

CREATE DATABASE empresa ENCODING UTF8;

\c empresa

CREATE TABLE IF NOT EXISTS empleado
(
    nombre character ,
    appat character,
    apmat character,
    dian integer,
    mesn integer,
    "añon" integer,
    calle character,
    colonia character,
    cp integer,
    nss integer NOT NULL,
    sexo character,
    salario integer,
    nsssupervisor integer,
    ndregistrado integer,
    CONSTRAINT empleado_pkey PRIMARY KEY (nss),
    CONSTRAINT nsssupconstraint FOREIGN KEY (nsssupervisor)
        REFERENCES empleado (nss) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS empleado
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS departamento
(
    nombre character,
    ndepartamento integer NOT NULL,
    nssgerente integer,
    diain integer,
    mesin integer,
    "añoin" integer,
    
    CONSTRAINT departamento_pkey PRIMARY KEY (ndepartamento),
    CONSTRAINT nssgerenteconstraint FOREIGN KEY (nssgerente)
        REFERENCES empleado (nss) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS departamento
    OWNER to postgres;





CREATE TABLE IF NOT EXISTS dependiente
(
    nomdep character NOT NULL,
    appatdep character NOT NULL,
    apmatdep character NOT NULL,
    sexo character,
    dianacdep integer,
    mesnacdep integer,
    "añonacdep" integer,
    nssempleado integer,
    CONSTRAINT dependiente_pkey PRIMARY KEY (nomdep, appatdep, apmatdep),
    CONSTRAINT nssempeladoconstraint FOREIGN KEY (nssempleado)
        REFERENCES empleado (nss) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS dependiente
    OWNER to postgres;





CREATE TABLE IF NOT EXISTS proyecto
(
    nombre character NOT NULL,
    numerop integer NOT NULL,
    edificio integer,
    piso integer,
    oficina integer,
    numdepto integer,
    CONSTRAINT proyecto_pkey PRIMARY KEY (numerop),
    CONSTRAINT numdeptoconstraint FOREIGN KEY (numdepto)
        REFERENCES departamento (ndepartamento) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS proyecto
    OWNER to postgres;




CREATE TABLE IF NOT EXISTS tranaja_en
(
    numpro integer NOT NULL,
    nssempleadoqtrabaja_en integer NOT NULL,
    horas integer,
    CONSTRAINT tranaja_en_pkey PRIMARY KEY (numpro, nssempleadoqtrabaja_en),
    CONSTRAINT nssempleadotrabaja_enconstraint FOREIGN KEY (nssempleadoqtrabaja_en)
        REFERENCES empleado (nss) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT,
    CONSTRAINT numproconstraint FOREIGN KEY (numpro)
        REFERENCES proyecto (numerop) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET DEFAULT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS tranaja_en
    OWNER to postgres;



\dt muestra las tablas
\d describe una tabla
