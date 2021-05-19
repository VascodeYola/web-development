CREATE DATABASE univer;

USE univer;

CREATE TABLE `faculty`
(
    `faculty_id` INT(10) AUTO_INCREMENT NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `place` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`faculty_id`)   
)

DEFAULT CHARACTER SET utf8mb4
COLLATE `utf8mb4_unicode_ci`
ENGINE = InnoDB

;

CREATE TABLE `edu_group`
(
    `edu_group_id` INT(10) AUTO_INCREMENT NOT NULL,
    `faculty_id` INT NOT NULL,
    `title` VARCHAR(255) NOT NULL,    
    PRIMARY KEY (`edu_group_id`),
    FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`)    
)

DEFAULT CHARACTER SET utf8mb4
COLLATE `utf8mb4_unicode_ci`
ENGINE = InnoDB

;

CREATE TABLE `student`
(
    `student_id` INT AUTO_INCREMENT NOT NULL,
    `edu_group_id` INT NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `age` INT,
    `email` VARCHAR(255) NOT NULL,    
    PRIMARY KEY (`student_id`),
    FOREIGN KEY (`edu_group_id`) REFERENCES `edu_group` (`edu_group_id`) 

)

DEFAULT CHARACTER SET utf8mb4
COLLATE `utf8mb4_unicode_ci`
ENGINE = InnoDB
;

INSERT INTO `faculty` SET  `title` = 'Факультет природоубустройства и водных ресурсов', `place` = 'ул.Панфилова';
INSERT INTO `faculty` SET  `title` = 'Радиотехнический факультет', `place` = 'ул.Панфилова';
INSERT INTO `faculty` SET  `title` = 'Механико-машиностроительный факультет', `place` = 'ул.Успенская';

INSERT INTO `edu_group` SET `faculty_id` = 1, `title` = 'БЖД-11';

INSERT INTO `student` SET  `edu_group_id` = 1, `first_name` = 'Петр', `last_name` = 'Петров', `age` = 21, `email` = 'petrov_petr@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 1, `first_name` = 'Иван', `last_name` = 'Иванов', `age` = 19, `email` = 'ivanov12@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 1, `first_name` = 'Семен', `last_name` = 'Семенов', `age` = 19, `email` = 'semenov@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 1, `first_name` = 'Прохор', `last_name` = 'Прохоров', `age` = 28, `email` = 'prohorov@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 1, `first_name` = 'Анна', `last_name` = 'Аннова', `age` = 18, `email` = 'annushka18@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 1, `title` = 'КиВР-11';

INSERT INTO `student` SET  `edu_group_id` = 2, `first_name` = 'Петр', `last_name` = 'Петров', `age` = 21, `email` = 'petrov_petr@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 2, `first_name` = 'Иван', `last_name` = 'Иванов', `age` = 19, `email` = 'ivanov12@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 2, `first_name` = 'Юлия', `last_name` = 'Юльева', `age` = 19, `email` = 'koketka@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 2, `first_name` = 'Прохор', `last_name` = 'Прохоров', `age` = 28, `email` = 'prohorov@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 2, `first_name` = 'Анна', `last_name` = 'Аннова', `age` = 18, `email` = 'annushka18@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 1, `title` = 'КиВР-12';

INSERT INTO `student` SET  `edu_group_id` = 3, `first_name` = 'Руслан', `last_name` = 'Тухватулин', `age` = 36, `email` = 'ruslan@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 3, `first_name` = 'Иван', `last_name` = 'Иванов', `age` = 19, `email` = 'ivanov12@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 3, `first_name` = 'Юлия', `last_name` = 'Юльева', `age` = 19, `email` = 'koketka@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 3, `first_name` = 'Прохор', `last_name` = 'Прохоров', `age` = 28, `email` = 'prohorov@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 3, `first_name` = 'Анна', `last_name` = 'Аннова', `age` = 18, `email` = 'annushka18@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 2, `title` = 'РЭС-11';

INSERT INTO `student` SET  `edu_group_id` = 4, `first_name` = 'Тимофей', `last_name` = 'Тимофеев', `age` = 19, `email` = 'timo@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 4, `first_name` = 'Николай', `last_name` = 'Николаев', `age` = 19, `email` = 'niknik@gmail.ru';
INSERT INTO `student` SET  `edu_group_id` = 4, `first_name` = 'Елена', `last_name` = 'Леонтьева', `age` = 23, `email` = 'lenok@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 4, `first_name` = 'Петр', `last_name` = 'Петров', `age` = 21, `email` = 'petpetr@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 4, `first_name` = 'Дарья', `last_name` = 'Иззазеркалья', `age` = 26, `email` = 'Dashka@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 2, `title` = 'РТ-11';

INSERT INTO `student` SET  `edu_group_id` = 5, `first_name` = 'Татьяна', `last_name` = 'Ильина', `age` = 26, `email` = 'tank@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 5, `first_name` = 'Алексей', `last_name` = 'Алексеев', `age` = 19, `email` = 'leshiy@gmail.ru';
INSERT INTO `student` SET  `edu_group_id` = 5, `first_name` = 'Екатерина', `last_name` = 'Леонтьева', `age` = 19, `email` = 'kate@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 5, `first_name` = 'Абдула', `last_name` = 'Запрягай', `age` = 21, `email` = 'tashkent@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 5, `first_name` = 'Руслан', `last_name` = 'Иванов', `age` = 23, `email` = 'rus@ya.ru';

INSERT INTO `edu_group` SET `faculty_id` = 2, `title` = 'УиТС-11';

INSERT INTO `student` SET  `edu_group_id` = 6, `first_name` = 'Петр', `last_name` = 'Петров', `age` = 21, `email` = 'petrov_petr@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 6, `first_name` = 'Иван', `last_name` = 'Иванов', `age` = 19, `email` = 'ivanov12@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 6, `first_name` = 'Юлия', `last_name` = 'Юльева', `age` = 19, `email` = 'koketka@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 6, `first_name` = 'Прохор', `last_name` = 'Прохоров', `age` = 28, `email` = 'prohorov@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 6, `first_name` = 'Анна', `last_name` = 'Аннова', `age` = 18, `email` = 'annushka18@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 3, `title` = 'ММ-11';

INSERT INTO `student` SET  `edu_group_id` = 7, `first_name` = 'Тимофей', `last_name` = 'Тимофеев', `age` = 19, `email` = 'timo@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 7, `first_name` = 'Николай', `last_name` = 'Николаев', `age` = 19, `email` = 'niknik@gmail.ru';
INSERT INTO `student` SET  `edu_group_id` = 7, `first_name` = 'Елена', `last_name` = 'Леонтьева', `age` = 23, `email` = 'lenok@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 7, `first_name` = 'Петр', `last_name` = 'Петров', `age` = 21, `email` = 'petpetr@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 7, `first_name` = 'Дарья', `last_name` = 'Иззазеркалья', `age` = 26, `email` = 'Dashka@mail.ru';

INSERT INTO `edu_group` SET `faculty_id` = 3, `title` = 'ТМ-11';

INSERT INTO `student` SET  `edu_group_id` = 8, `first_name` = 'Наталья', `last_name` = 'Петрова', `age` = 26, `email` = 'nata@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 8, `first_name` = 'Трофим', `last_name` = 'Трофимов', `age` = 19, `email` = 'trotro@gmail.ru';
INSERT INTO `student` SET  `edu_group_id` = 8, `first_name` = 'Артём', `last_name` = 'Тереньтев', `age` = 28, `email` = 'teremok@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 8, `first_name` = 'Мария', `last_name` = 'Иванова', `age` = 21, `email` = 'masha@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 8, `first_name` = 'Антон', `last_name` = 'Чехов', `age` = 58, `email` = 'prozaik@pishu.ru';

INSERT INTO `edu_group` SET `faculty_id` = 3, `title` = 'ТМ-12';

INSERT INTO `student` SET  `edu_group_id` = 9, `first_name` = 'Ирина', `last_name` = 'Логинова', `age` = 20, `email` = 'log@ya.ru';
INSERT INTO `student` SET  `edu_group_id` = 9, `first_name` = 'Захар', `last_name` = 'Николаев', `age` = 19, `email` = 'zahar@gmail.ru';
INSERT INTO `student` SET  `edu_group_id` = 9, `first_name` = 'Игорь', `last_name` = 'Лентьев', `age` = 25, `email` = 'igogo@bis.ru';
INSERT INTO `student` SET  `edu_group_id` = 9, `first_name` = 'Игорь', `last_name` = 'Шишкин', `age` = 21, `email` = 'shishka@mail.ru';
INSERT INTO `student` SET  `edu_group_id` = 9, `first_name` = 'Николай', `last_name` = 'Басков', `age` = 17, `email` = 'bariton@karaoke.ru';

SELECT
    `first_name`,
    `age`,
    `last_name` AS "Фамилия"
FROM
    `student`
WHERE
    `age` LIKE 19;

SELECT
    `student`.`first_name` AS "Имя",
    `student`.`last_name` AS "Фамилия",
    `edu_group`.`title` AS "Группа"
FROM
    `student` JOIN `edu_group` ON `student`.`edu_group_id`=`edu_group`.`edu_group_id`
WHERE   
    `edu_group`.`title` LIKE 'ТМ-12';

SELECT
    `student`.`first_name` AS "Имя",
    `student`.`last_name` AS "Фамилия",
    `faculty`.`title` AS "Факультет"
FROM
    `student`
    JOIN `edu_group` ON `student`.`edu_group_id`=`edu_group`.`edu_group_id`
    JOIN `faculty` ON `edu_group`.`faculty_id`=`faculty`.`faculty_id`
WHERE   
    `faculty`.`title` LIKE 'Радиотехнический факультет';


SELECT
    `student`.`first_name` AS "Имя",
    `student`.`last_name` AS "Фамилия",
    `edu_group`.`title` AS "Группа",
    `faculty`.`title` AS "Факультет"   
FROM
    `student`
    JOIN `edu_group` ON `student`.`edu_group_id`=`edu_group`.`edu_group_id`
    JOIN `faculty` ON `edu_group`.`faculty_id`=`faculty`.`faculty_id`
WHERE   
    `student`.`first_name` = 'Николай' AND `student`.`last_name` = 'Басков';       

SELECT
    `first_name`,
    `age`,
    `last_name` AS `family_name`
FROM
    `student`
WHERE
    `edu_group_id` LIKE 9;

