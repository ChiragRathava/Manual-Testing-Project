-- Add Foreign Keys
ALTER TABLE StudentCourses
ADD CONSTRAINT fk_student FOREIGN KEY (StudentId) REFERENCES Students(id);

ALTER TABLE StudentCourses
ADD CONSTRAINT fk_course FOREIGN KEY (CourseId) REFERENCES Courses(id);
