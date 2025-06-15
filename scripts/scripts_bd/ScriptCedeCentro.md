use colegio

// --------------------
// Estudiantes
// --------------------
db.estudiantes.insertMany([
  { dni: "50000000", nombre: "Javier Méndez", grado: "4to", nivel: "primaria", cede: "centro",dni_apoderado:"51000000" },
  { dni: "50000001", nombre: "Valeria Quispe", grado: "3ro", nivel: "primaria", cede: "centro",dni_apoderado:"51000001" },
  { dni: "50000002", nombre: "Diego Suárez", grado: "5to", nivel: "primaria", cede: "centro",dni_apoderado:"51000002" },
  { dni: "50000003", nombre: "Andrea Torres", grado: "2do", nivel: "primaria", cede: "centro",dni_apoderado:"51000003" },
  { dni: "50000004", nombre: "Martín Gamarra", grado: "1ro", nivel: "primaria", cede: "centro",dni_apoderado:"51000004" },
  { dni: "50000005", nombre: "Karla Chávez", grado: "5to", nivel: "primaria", cede: "centro",dni_apoderado:"51000005" },
  { dni: "50000006", nombre: "José Ríos", grado: "6to", nivel: "primaria", cede: "centro",dni_apoderado:"51000006" },
  { dni: "50000007", nombre: "Natalia Vargas", grado: "4to", nivel: "primaria", cede: "centro",dni_apoderado:"51000007" },
  { dni: "50000008", nombre: "Pedro Castillo", grado: "3ro", nivel: "primaria", cede: "centro",dni_apoderado:"51000008" },
  { dni: "50000009", nombre: "Lucía Olivos", grado: "2do", nivel: "primaria", cede: "centro",dni_apoderado:"51000009" },
  { dni: "50000010", nombre: "Santiago León", grado: "1ro", nivel: "primaria", cede: "centro",dni_apoderado:"51000010" }
])

// --------------------
// Apoderados
// --------------------
db.apoderado.insertMany([
  { dni: "51000000", nombre: "Marta Méndez", cede: "centro" },
  { dni: "51000001", nombre: "Luis Quispe", cede: "centro" },
  { dni: "51000002", nombre: "Sonia Suárez", cede: "centro" },
  { dni: "51000003", nombre: "Carlos Torres", cede: "centro" },
  { dni: "51000004", nombre: "Luz Gamarra", cede: "centro" },
  { dni: "51000005", nombre: "Oscar Chávez", cede: "centro" },
  { dni: "51000006", nombre: "Lucía Ríos", cede: "centro" },
  { dni: "51000007", nombre: "Álvaro Vargas", cede: "centro" },
  { dni: "51000008", nombre: "Diana Castillo", cede: "centro" },
  { dni: "51000009", nombre: "Roberto Olivos", cede: "centro" },
  { dni: "51000010", nombre: "Patricia León", cede: "centro" }
])

// --------------------
// Profesores
// --------------------
db.profesores.insertMany([
  { dni: "60000000", nombre: "Antonio Pérez", especialidad: "Comunicación", cede: "centro" },
  { dni: "60000001", nombre: "Rosa Medina", especialidad: "Matemática", cede: "centro" },
  { dni: "60000002", nombre: "Renato Gutiérrez", especialidad: "Historia", cede: "centro" },
  { dni: "60000003", nombre: "Mónica Rojas", especialidad: "Ciencia", cede: "centro" },
  { dni: "60000004", nombre: "Diego Castro", especialidad: "Inglés", cede: "centro" },
  { dni: "60000005", nombre: "Verónica Ruiz", especialidad: "Arte", cede: "centro" },
  { dni: "60000006", nombre: "César Mendoza", especialidad: "Computación", cede: "centro" },
  { dni: "60000007", nombre: "Julia Luján", especialidad: "Religión", cede: "centro" },
  { dni: "60000008", nombre: "Raquel Silva", especialidad: "Música", cede: "centro" },
  { dni: "60000009", nombre: "Tania Flores", especialidad: "Educación Física", cede: "centro" },
  { dni: "60000010", nombre: "Manuel Sánchez", especialidad: "Personal Social", cede: "centro" }
])

// --------------------
// Cursos
// --------------------
db.cursos.insertMany([
  { codigo: "COMC401", nombre: "Comunicación 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000000", cede: "centro" },
  { codigo: "MATC402", nombre: "Matemática 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000001", cede: "centro" },
  { codigo: "HISC403", nombre: "Historia 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000002", cede: "centro" },
  { codigo: "CIEC404", nombre: "Ciencia 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000003", cede: "centro" },
  { codigo: "INGC405", nombre: "Inglés 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000004", cede: "centro" },
  { codigo: "ARTC406", nombre: "Arte 4to", grado: "4to", nivel: "primaria", profesor_dni: "60000005", cede: "centro" },
  { codigo: "COMC501", nombre: "Comunicación 5to", grado: "5to", nivel: "primaria", profesor_dni: "60000006", cede: "centro" },
  { codigo: "MATC502", nombre: "Matemática 5to", grado: "5to", nivel: "primaria", profesor_dni: "60000007", cede: "centro" },
  { codigo: "CIEC503", nombre: "Ciencia 5to", grado: "5to", nivel: "primaria", profesor_dni: "60000008", cede: "centro" },
  { codigo: "HISC504", nombre: "Historia 5to", grado: "5to", nivel: "primaria", profesor_dni: "60000009", cede: "centro" },
  { codigo: "INGC505", nombre: "Inglés 5to", grado: "5to", nivel: "primaria", profesor_dni: "60000010", cede: "centro" }
])

// --------------------
// Matrículas
// --------------------
db.matriculas.insertMany([
  { dni_estudiante: "40000001", codigo_curso: "COMC401", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000001", codigo_curso: "MATC402", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000002", codigo_curso: "MATC402", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000003", codigo_curso: "MATC502", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000004", codigo_curso: "COMC401", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000005", codigo_curso: "COMC401", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000006", codigo_curso: "MATC502", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000007", codigo_curso: "MATC402", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000008", codigo_curso: "CIEC404", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000009", codigo_curso: "HISC504", año: 2024, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "40000010", codigo_curso: "CIEC503", año: 2024, periodo: "primer_bimestre", cede: "centro" }
])

// --------------------
// Notas
// --------------------
db.notas.insertMany([
  { dni_estudiante: "50000000", codigo_curso: "COMC401", nota: 17, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000001", codigo_curso: "MATC402", nota: 18, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000002", codigo_curso: "MATC402", nota: 14, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000003", codigo_curso: "MATC502", nota: 16, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000004", codigo_curso: "COMC401", nota: 20, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000005", codigo_curso: "COMC401", nota: 13, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000006", codigo_curso: "MATC502", nota: 15, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000007", codigo_curso: "MATC402", nota: 12, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000008", codigo_curso: "CIEC404", nota: 19, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000009", codigo_curso: "HISC504", nota: 11, periodo: "primer_bimestre", cede: "centro" },
  { dni_estudiante: "50000010", codigo_curso: "CIEC503", nota: 17, periodo: "primer_bimestre", cede: "centro" }
])

// --------------------
// Asistencias
// --------------------
db.asistencias.insertMany([
  { dni_estudiante: "50000000", fecha: "2024-06-10", presente: true, aula_numero: "C-101", cede: "centro" },
  { dni_estudiante: "50000001", fecha: "2024-06-10", presente: true, aula_numero: "C-101", cede: "centro" },
  { dni_estudiante: "50000002", fecha: "2024-06-10", presente: false, aula_numero: "C-102", cede: "centro" },
  { dni_estudiante: "50000003", fecha: "2024-06-10", presente: true, aula_numero: "C-102", cede: "centro" },
  { dni_estudiante: "50000004", fecha: "2024-06-10", presente: false, aula_numero: "C-103", cede: "centro" },
  { dni_estudiante: "50000005", fecha: "2024-06-10", presente: true, aula_numero: "C-103", cede: "centro" },
  { dni_estudiante: "50000006", fecha: "2024-06-10", presente: true, aula_numero: "C-104", cede: "centro" },
  { dni_estudiante: "50000007", fecha: "2024-06-10", presente: true, aula_numero: "C-104", cede: "centro" },
  { dni_estudiante: "50000008", fecha: "2024-06-10", presente: true, aula_numero: "C-105", cede: "centro" },
  { dni_estudiante: "50000009", fecha: "2024-06-10", presente: false, aula_numero: "C-105", cede: "centro" },
  { dni_estudiante: "50000010", fecha: "2024-06-10", presente: true, aula_numero: "C-106", cede: "centro" }
])

// --------------------
// Aulas
// --------------------
db.aulas.insertMany([
  { numero: "C-101", grado: "4to", nivel: "primaria", profesor_dni: "60000000", cede: "centro" },
  { numero: "C-102", grado: "4to", nivel: "primaria", profesor_dni: "60000001", cede: "centro" },
  { numero: "C-103", grado: "5to", nivel: "primaria", profesor_dni: "60000002", cede: "centro" },
  { numero: "C-104", grado: "5to", nivel: "primaria", profesor_dni: "60000003", cede: "centro" },
  { numero: "C-105", grado: "3ro", nivel: "primaria", profesor_dni: "60000004", cede: "centro" },
  { numero: "C-106", grado: "2do", nivel: "primaria", profesor_dni: "60000005", cede: "centro" },
  { numero: "C-107", grado: "1ro", nivel: "primaria", profesor_dni: "60000006", cede: "centro" },
  { numero: "C-108", grado: "6to", nivel: "primaria", profesor_dni: "60000007", cede: "centro" },
  { numero: "C-109", grado: "4to", nivel: "primaria", profesor_dni: "60000008", cede: "centro" },
  { numero: "C-110", grado: "4to", nivel: "primaria", profesor_dni: "60000009", cede: "centro" },
  { numero: "C-111", grado: "5to", nivel: "primaria", profesor_dni: "60000010", cede: "centro" }
])
