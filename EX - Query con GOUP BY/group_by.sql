1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) as `iscritti` , YEAR(`enrolment_date`) as `anno_iscrizione` 
FROM `students`
GROUP BY `anno_iscrizione`;


2. Contare gli insegnanti che hanno lufficio nello stesso edificio

SELECT COUNT(*) as `insegnanti`, `office_address`as `edificio`
FROM `teachers`
GROUP BY `edificio`;


3. Calcolare la media dei voti di ogni appello desame

SELECT COUNT(*) as `esame`, AVG(`vote`) as `media_voti`, `exam_id` 
FROM `exam_student`
GROUP BY `exam_id`;



4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(`id`) as `numero_corsi_di_laurea` , `department_id` as `dipartimento`
FROM `degrees`
GROUP BY `dipartimento`;