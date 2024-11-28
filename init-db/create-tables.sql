CREATE TABLE Groups (
    group_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Teachers (
    teacher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50)
);

CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE GroupSubjects (
    group_id INT NOT NULL REFERENCES Groups(group_id),
    subject_id INT NOT NULL REFERENCES Subjects(subject_id),
    PRIMARY KEY (group_id, subject_id)
);

CREATE TABLE TeacherSubjects (
    teacher_id INT NOT NULL REFERENCES Teachers(teacher_id),
    subject_id INT NOT NULL REFERENCES Subjects(subject_id),
    PRIMARY KEY (teacher_id, subject_id)
);

CREATE TABLE Schedule (
    teacher_id INT NOT NULL REFERENCES Teachers(teacher_id),
    group_id INT NOT NULL REFERENCES Groups(group_id),
    subject_id INT NOT NULL REFERENCES Subjects(subject_id),
    PRIMARY KEY (teacher_id, group_id, subject_id)
);