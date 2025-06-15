use colegio

// ==========================
// Estudiantes (11)
// ==========================
db.estudiantes.insertMany([
  { dni: "10000000", nombre: "Lucía Pérez", grado: "5to", nivel: "primaria", cede: "sur" , dni_apoderado:"11000000"},
  { dni: "10000001", nombre: "Carlos Gómez", grado: "5to", nivel: "primaria", cede: "sur" , dni_apoderado:"11000001"},
  { dni: "10000002", nombre: "María Torres", grado: "6to", nivel: "primaria", cede: "sur" , dni_apoderado:"11000002"},
  { dni: "10000003", nombre: "Luis Quispe", grado: "1ro", nivel: "secundaria", cede: "sur", dni_apoderado:"11000003" },
  { dni: "10000004", nombre: "Ana Chávez", grado: "2do", nivel: "secundaria", cede: "sur", dni_apoderado:"11000004" },
  { dni: "10000005", nombre: "José Ruiz", grado: "3ro", nivel: "secundaria", cede: "sur", dni_apoderado:"11000005" },
  { dni: "10000006", nombre: "Valeria Rojas", grado: "4to", nivel: "primaria", cede: "sur", dni_apoderado:"11000006" },
  { dni: "10000007", nombre: "Marco Díaz", grado: "1ro", nivel: "primaria", cede: "sur", dni_apoderado:"11000007" },
  { dni: "10000008", nombre: "Sandra Poma", grado: "5to", nivel: "secundaria", cede: "sur", dni_apoderado:"11000008" },
  { dni: "10000009", nombre: "Renato Silva", grado: "3ro", nivel: "primaria", cede: "sur", dni_apoderado:"11000009" },
  { dni: "10000010", nombre: "Natalia Herrera", grado: "2do", nivel: "primaria", cede: "sur", dni_apoderado:"11000010" }
]);

// ==========================
// Apoderados (11)
// ==========================
db.apoderado.insertMany([
  { dni: "11000000", nombre: "Rosa Pérez", cede: "sur" },
  { dni: "11000001", nombre: "Mario Gómez", cede: "sur" },
  { dni: "11000002", nombre: "Juana Torres", cede: "sur" },
  { dni: "11000003", nombre: "Marta Quispe", cede: "sur" },
  { dni: "11000004", nombre: "Daniel Chávez", cede: "sur" },
  { dni: "11000005", nombre: "Patricia Ruiz", cede: "sur" },
  { dni: "11000006", nombre: "Oscar Rojas", cede: "sur" },
  { dni: "11000007", nombre: "Lucía Díaz", cede: "sur" },
  { dni: "11000008", nombre: "Alonso Poma", cede: "sur" },
  { dni: "11000009", nombre: "Mariela Silva", cede: "sur" },
  { dni: "11000010", nombre: "Paola Herrera", cede: "sur" }
])


// ==========================
// Profesores (11)
// ==========================
db.profesores.insertMany([
  { dni: "20000000", nombre: "Pedro Salazar", especialidad: "Matemática", cede: "sur" },
  { dni: "20000001", nombre: "Juana López", especialidad: "Comunicación", cede: "sur" },
  { dni: "20000002", nombre: "Carlos Espinoza", especialidad: "Ciencia", cede: "sur" },
  { dni: "20000003", nombre: "Ana Meza", especialidad: "Arte", cede: "sur" },
  { dni: "20000004", nombre: "Luis Cueva", especialidad: "Educación Física", cede: "sur" },
  { dni: "20000005", nombre: "Laura Palomino", especialidad: "Historia", cede: "sur" },
  { dni: "20000006", nombre: "Martín Calderón", especialidad: "Computación", cede: "sur" },
  { dni: "20000007", nombre: "Gloria Huerta", especialidad: "Religión", cede: "sur" },
  { dni: "20000008", nombre: "Jorge Farfán", especialidad: "Inglés", cede: "sur" },
  { dni: "20000009", nombre: "Mónica Aliaga", especialidad: "Geografía", cede: "sur" },
  { dni: "20000010", nombre: "Esteban Pérez", especialidad: "Física", cede: "sur" }
]);

// ==========================
// Cursos (11)
// ==========================
db.cursos.insertMany([
  { codigo: "MAT101", nombre: "Matemática 5to", grado: "5to", nivel: "primaria", profesor_dni: "20000000", cede: "sur" },
  { codigo: "COM201", nombre: "Comunicación 5to", grado: "5to", nivel: "primaria", profesor_dni: "20000001", cede: "sur" },
  { codigo: "CIE301", nombre: "Ciencia 6to", grado: "6to", nivel: "primaria", profesor_dni: "20000002", cede: "sur" },
  { codigo: "ART401", nombre: "Arte 1ro Sec", grado: "1ro", nivel: "secundaria", profesor_dni: "20000003", cede: "sur" },
  { codigo: "EF501", nombre: "Educación Física 2do Sec", grado: "2do", nivel: "secundaria", profesor_dni: "20000004", cede: "sur" },
  { codigo: "HIS601", nombre: "Historia 3ro Sec", grado: "3ro", nivel: "secundaria", profesor_dni: "20000005", cede: "sur" },
  { codigo: "COM302", nombre: "Comunicación 4to", grado: "4to", nivel: "primaria", profesor_dni: "20000006", cede: "sur" },
  { codigo: "ING701", nombre: "Inglés 1ro", grado: "1ro", nivel: "primaria", profesor_dni: "20000007", cede: "sur" },
  { codigo: "REL801", nombre: "Religión 5to Sec", grado: "5to", nivel: "secundaria", profesor_dni: "20000008", cede: "sur" },
  { codigo: "GEO901", nombre: "Geografía 3ro", grado: "3ro", nivel: "primaria", profesor_dni: "20000009", cede: "sur" },
  { codigo: "FIS011", nombre: "Física 2do Sec", grado: "2do", nivel: "secundaria", profesor_dni: "20000010", cede: "sur" }
]);

// ==========================
// Matrículas (11)
// ==========================
db.matriculas.insertMany([
  { dni_estudiante: "10000000", codigo_curso: "MAT101", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000001", codigo_curso: "COM201", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000002", codigo_curso: "CIE301", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000003", codigo_curso: "ART401", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000004", codigo_curso: "EF501", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000005", codigo_curso: "HIS601", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000006", codigo_curso: "COM302", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000007", codigo_curso: "ING701", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000008", codigo_curso: "REL801", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000009", codigo_curso: "GEO901", año: 2024, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000010", codigo_curso: "FIS011", año: 2024, periodo: "primer_bimestre", cede: "sur" }
]);

// ==========================
// Notas (11)
// ==========================
db.notas.insertMany([
  { dni_estudiante: "10000000", codigo_curso: "MAT101", nota: 18, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000001", codigo_curso: "COM201", nota: 17, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000002", codigo_curso: "CIE301", nota: 16, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000003", codigo_curso: "ART401", nota: 18, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000004", codigo_curso: "EF501", nota: 20, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000005", codigo_curso: "HIS601", nota: 15, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000006", codigo_curso: "COM302", nota: 19, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000007", codigo_curso: "ING701", nota: 17, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000008", codigo_curso: "REL801", nota: 18, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000009", codigo_curso: "GEO901", nota: 14, periodo: "primer_bimestre", cede: "sur" },
  { dni_estudiante: "10000010", codigo_curso: "FIS011", nota: 16, periodo: "primer_bimestre", cede: "sur" }
]);

// ==========================
// Asistencias (11)
// ==========================
db.asistencias.insertMany([
  { dni_estudiante: "10000000", fecha: "2024-06-12", presente: true, aula_numero: "A-203", cede: "sur" },
  { dni_estudiante: "10000001", fecha: "2024-06-12", presente: true, aula_numero: "A-204", cede: "sur" },
  { dni_estudiante: "10000002", fecha: "2024-06-12", presente: false, aula_numero: "A-205", cede: "sur" },
  { dni_estudiante: "10000003", fecha: "2024-06-12", presente: true, aula_numero: "A-206", cede: "sur" },
  { dni_estudiante: "10000004", fecha: "2024-06-12", presente: false, aula_numero: "A-207", cede: "sur" },
  { dni_estudiante: "10000005", fecha: "2024-06-12", presente: true, aula_numero: "A-208", cede: "sur" },
  { dni_estudiante: "10000006", fecha: "2024-06-12", presente: true, aula_numero: "A-209", cede: "sur" },
  { dni_estudiante: "10000007", fecha: "2024-06-12", presente: true, aula_numero: "A-210", cede: "sur" },
  { dni_estudiante: "10000008", fecha: "2024-06-12", presente: false, aula_numero: "A-211", cede: "sur" },
  { dni_estudiante: "10000009", fecha: "2024-06-12", presente: true, aula_numero: "A-212", cede: "sur" },
  { dni_estudiante: "10000010", fecha: "2024-06-12", presente: true, aula_numero: "A-213", cede: "sur" }
]);

// ==========================
// Aulas (11)
// ==========================
db.aulas.insertMany([
  { numero: "A-203", grado: "5to", nivel: "primaria", profesor_dni: "20000000", cede: "sur" },
  { numero: "A-204", grado: "5to", nivel: "primaria", profesor_dni: "20000001", cede: "sur" },
  { numero: "A-205", grado: "6to", nivel: "primaria", profesor_dni: "20000002", cede: "sur" },
  { numero: "A-206", grado: "1ro", nivel: "secundaria", profesor_dni: "20000003", cede: "sur" },
  { numero: "A-207", grado: "2do", nivel: "secundaria", profesor_dni: "20000004", cede: "sur" },
  { numero: "A-208", grado: "3ro", nivel: "secundaria", profesor_dni: "20000005", cede: "sur" },
  { numero: "A-209", grado: "4to", nivel: "primaria", profesor_dni: "20000001", cede: "sur" },
  { numero: "A-210", grado: "1ro", nivel: "primaria", profesor_dni: "20000008", cede: "sur" },
  { numero: "A-211", grado: "5to", nivel: "secundaria", profesor_dni: "20000007", cede: "sur" },
  { numero: "A-212", grado: "3ro", nivel: "primaria", profesor_dni: "20000009", cede: "sur" },
  { numero: "A-213", grado: "2do", nivel: "secundaria", profesor_dni: "20000010", cede: "sur" }
]);


***************************************************
