SELECT * 
FROM homework;

SELECT lesson.*, homework.name AS homework_name, homework.description AS homework_description 
FROM lesson
LEFT JOIN HOMEWORK ON lesson.homework_id = homework.id
;

SELECT lesson.*, homework.name AS homework_name, homework.description AS homework_description 
FROM lesson
LEFT JOIN homework ON lesson.homework_id = homework.id
ORDER BY lesson.updateat DESC;

SELECT schedule.*, lesson.name AS lesson_name, lesson.updateat AS lesson_updatedAt
FROM schedule
LEFT JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
LEFT JOIN lesson ON schedule_lesson.lesson_id = lesson.id;

SELECT schedule.name AS schedule_name, COUNT(lesson.name) AS lessons_count
FROM schedule
LEFT JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
LEFT JOIN lesson ON schedule_lesson.lesson_id = lesson.id
GROUP BY schedule.id;