CREATE INDEX "index_enrollments"
ON "enrollments" ("student_id", "course_id");

CREATE INDEX "index_courses"
ON "courses" ("department", "number", "semester", "title");

CREATE INDEX "index_satisfies"
ON "satisfies" ("course_id", "requirement_id");

CREATE INDEX "index_students_name"
ON "students" ("name");

