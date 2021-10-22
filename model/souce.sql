/* Crea base de datos "telate" */ 
/*create database telate; */

/* Usa base de datos */
use telate;

/* tablas a crear: _primary -extern
    conteo_participantes(INT)
    combinaciones(_idCombinacion, n1, n2, n3, n4, n5, n6)
    participante(_idParticipante, nombres, apellidos)
    ticket(-idParticipante, monto)
    boleta(-idParticipante, folio[4*4], -idCombinacion, -idCombinacion, -idCombinacion)
*/
create table conteo_participantes(
        conteo INT
        );

create table combinaciones(
        idCombinacion INT PRIMARY KEY,
        n1 INT,
        n2 INT,
        n3 INT,
        n4 INT,
        n5 INT,
        n6 INT
        );

create table participante(
        idParticipante INT PRIMARY KEY,
        nombres VARCHAR(40), 
        apellidos VARCHAR(40)
        );

create table ticket(
        idParticipante INT,
        monto INT,
        FOREIGN KEY (idParticipante) REFERENCES participante(idParticipante)
        );

create table boleta(
        idParticipante INT,
        folio INT(16),
        jugada INT,
        revancha1 INT,
        revancha2 INT,
        FOREIGN KEY (idParticipante) REFERENCES participante(idParticipante),
        FOREIGN KEY (jugada) REFERENCES combinaciones(idCombinacion),
        FOREIGN KEY (revancha1) REFERENCES combinaciones(idCombinacion),
        FOREIGN KEY (revancha2) REFERENCES combinaciones(idCombinacion)
        );


