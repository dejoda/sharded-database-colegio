use colegio

// --------------------
// Estudiantes
// --------------------
db.estudiantes.insertMany([
  { dni: "30000000", nombre: "Juan Torres", grado: "4to", nivel: "primaria", cede: "norte" ,dni_apoderado:"31000000"},
  { dni: "30000001", nombre: "Carla Díaz", grado: "3ro", nivel: "primaria", cede: "norte" ,dni_apoderado:"31000001"},
  { dni: "30000002", nombre: "Luis Gómez", grado: "5to", nivel: "primaria", cede: "norte" ,dni_apoderado:"31000002"},
  { dni: "30000003", nombre: "María López", grado: "2do", nivel: "primaria", cede: "norte", dni_apoderado:"31000003"},
  { dni: "30000004", nombre: "Kevin Ramos", grado: "1ro", nivel: "primaria", cede: "norte",dni_apoderado:"31000004" },
  { dni: "30000005", nombre: "Sofía Huamán", grado: "5to", nivel: "primaria", cede: "norte",dni_apoderado:"31000005" },
  { dni: "30000006", nombre: "Jorge Peña", grado: "6to", nivel: "primaria", cede: "norte" ,dni_apoderado:"31000006"},
  { dni: "30000007", nombre: "Marta Valdez", grado: "4to", nivel: "primaria", cede: "norte",dni_apoderado:"31000007" },
  { dni: "30000008", nombre: "Renzo Cueva", grado: "3ro", nivel: "primaria", cede: "norte" ,dni_apoderado:"31000008"},
  { dni: "30000009", nombre: "Lucía Romero", grado: "2do", nivel: "primaria", cede: "norte",dni_apoderado:"31000009" },
  { dni: "30000010", nombre: "Samuel Espinoza", grado: "1ro", nivel: "primaria", cede: "norte",dni_apoderado:"31000010" }
])

// --------------------
// Apoderados
// --------------------
db.apoderado.insertMany([
  { dni: "31000000", nombre: "Ana Torres", cede: "norte" },
  { dni: "31000001", nombre: "Luis Díaz", cede: "norte" },
  { dni: "31000002", nombre: "Sonia Gómez", cede: "norte" },
  { dni: "31000003", nombre: "Carlos López", cede: "norte" },
  { dni: "31000004", nombre: "María Ramos", cede: "norte" },
  { dni: "31000005", nombre: "Pablo Huamán", cede: "norte" },
  { dni: "31000006", nombre: "Luisa Peña", cede: "norte" },
  { dni: "31000007", nombre: "Javier Valdez", cede: "norte" },
  { dni: "31000008", nombre: "Claudia Cueva", cede: "norte" },
  { dni: "31000009", nombre: "Mario Romero", cede: "norte" },
  { dni: "31000010", nombre: "Silvia Espinoza", cede: "norte" }
])


// --------------------
// Profesores
// --------------------
db.profesores.insertMany([
  { dni: "40000000", nombre: "Fernando Ruiz", especialidad: "Comunicación", cede: "norte" },
  { dni: "40000001", nombre: "Rocío Salinas", especialidad: "Matemática", cede: "norte" },
  { dni: "40000002", nombre: "Gustavo Ñahui", especialidad: "Historia", cede: "norte" },
  { dni: "40000003", nombre: "Carmen Vega", especialidad: "Ciencia", cede: "norte" },
  { dni: "40000004", nombre: "Julio Castro", especialidad: "Inglés", cede: "norte" },
  { dni: "40000005", nombre: "Elena Ríos", especialidad: "Arte", cede: "norte" },
  { dni: "40000006", nombre: "Daniel Paredes", especialidad: "Computación", cede: "norte" },
  { dni: "40000007", nombre: "Cynthia López", especialidad: "Religión", cede: "norte" },
  { dni: "40000008", nombre: "Raúl Chávez", especialidad: "Música", cede: "norte" },
  { dni: "40000009", nombre: "Tatiana Flores", especialidad: "Educación Física", cede: "norte" },
  { dni: "40000010", nombre: "José Medina", especialidad: "Personal Social", cede: "norte" }
])

// --------------------
// Cursos
// --------------------
db.cursos.insertMany([
  { codigo: "COM401", nombre: "Comunicación 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000000", cede: "norte" },
  { codigo: "MAT402", nombre: "Matemática 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000001", cede: "norte" },
  { codigo: "HIS403", nombre: "Historia 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000002", cede: "norte" },
  { codigo: "CIE404", nombre: "Ciencia 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000003", cede: "norte" },
  { codigo: "ING405", nombre: "Inglés 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000004", cede: "norte" },
  { codigo: "ART406", nombre: "Arte 4to", grado: "4to", nivel: "primaria", profesor_dni: "40000005", cede: "norte" },
  { codigo: "COM501", nombre: "Comunicación 5to", grado: "5to", nivel: "primaria", profesor_dni: "40000006", cede: "norte" },
  { codigo: "MAT502", nombre: "Matemática 5to", grado: "5to", nivel: "primaria", profesor_dni: "40000007", cede: "norte" },
  { codigo: "CIE503", nombre: "Ciencia 5to", grado: "5to", nivel: "primaria", profesor_dni: "40000008", cede: "norte" },
  { codigo: "HIS504", nombre: "Historia 5to", grado: "5to", nivel: "primaria", profesor_dni: "40000009", cede: "norte" },
  { codigo: "ING505", nombre: "Inglés 5to", grado: "5to", nivel: "primaria", profesor_dni: "40000010", cede: "norte" }
])

// --------------------
// Matrículas
// --------------------
db.matriculas.insertMany([
  { dni_estudiante: "30000000", codigo_curso: "COM401", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000001", codigo_curso: "MAT402", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000002", codigo_curso: "MAT402", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000003", codigo_curso: "MAT502", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000004", codigo_curso: "COM401", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000005", codigo_curso: "COM401", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000006", codigo_curso: "MAT502", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000007", codigo_curso: "MAT402", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000008", codigo_curso: "CIE404", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000009", codigo_curso: "HIS504", año: 2024, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000010", codigo_curso: "CIE503", año: 2024, periodo: "primer_bimestre", cede: "norte" }
])

// --------------------
// Notas
// --------------------
db.notas.insertMany([
  { dni_estudiante: "30000000", codigo_curso: "COM401", nota: 18, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000001", codigo_curso: "MAT402", nota: 17, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000002", codigo_curso: "MAT402", nota: 15, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000003", codigo_curso: "MAT502", nota: 14, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000004", codigo_curso: "COM401", nota: 19, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000005", codigo_curso: "COM401", nota: 13, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000006", codigo_curso: "MAT502", nota: 20, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000007", codigo_curso: "MAT402", nota: 16, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000008", codigo_curso: "CIE404", nota: 12, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000009", codigo_curso: "HIS504", nota: 18, periodo: "primer_bimestre", cede: "norte" },
  { dni_estudiante: "30000010", codigo_curso: "CIE503", nota: 17, periodo: "primer_bimestre", cede: "norte" }
])

// --------------------
// Asistencias
// --------------------
db.asistencias.insertMany([
  { dni_estudiante: "30000000", fecha: "2024-06-10", presente: true, aula_numero: "B-101", cede: "norte" },
  { dni_estudiante: "30000001", fecha: "2024-06-10", presente: true, aula_numero: "B-101", cede: "norte" },
  { dni_estudiante: "30000002", fecha: "2024-06-10", presente: true, aula_numero: "B-102", cede: "norte" },
  { dni_estudiante: "30000003", fecha: "2024-06-10", presente: false, aula_numero: "B-102", cede: "norte" },
  { dni_estudiante: "30000004", fecha: "2024-06-10", presente: true, aula_numero: "B-103", cede: "norte" },
  { dni_estudiante: "30000005", fecha: "2024-06-10", presente: true, aula_numero: "B-103", cede: "norte" },
  { dni_estudiante: "30000006", fecha: "2024-06-10", presente: true, aula_numero: "B-104", cede: "norte" },
  { dni_estudiante: "30000007", fecha: "2024-06-10", presente: false, aula_numero: "B-104", cede: "norte" },
  { dni_estudiante: "30000008", fecha: "2024-06-10", presente: true, aula_numero: "B-105", cede: "norte" },
  { dni_estudiante: "30000009", fecha: "2024-06-10", presente: true, aula_numero: "B-105", cede: "norte" },
  { dni_estudiante: "30000010", fecha: "2024-06-10", presente: true, aula_numero: "B-106", cede: "norte" }
])

// --------------------
// Aulas
// --------------------
db.aulas.insertMany([
  { numero: "B-101", grado: "4to", nivel: "primaria", profesor_dni: "40000000", cede: "norte" },
  { numero: "B-102", grado: "4to", nivel: "primaria", profesor_dni: "40000001", cede: "norte" },
  { numero: "B-103", grado: "5to", nivel: "primaria", profesor_dni: "40000002", cede: "norte" },
  { numero: "B-104", grado: "5to", nivel: "primaria", profesor_dni: "40000003", cede: "norte" },
  { numero: "B-105", grado: "3ro", nivel: "primaria", profesor_dni: "40000004", cede: "norte" },
  { numero: "B-106", grado: "2do", nivel: "primaria", profesor_dni: "40000005", cede: "norte" },
  { numero: "B-107", grado: "1ro", nivel: "primaria", profesor_dni: "40000006", cede: "norte" },
  { numero: "B-108", grado: "6to", nivel: "primaria", profesor_dni: "40000007", cede: "norte" },
  { numero: "B-109", grado: "4to", nivel: "primaria", profesor_dni: "40000008", cede: "norte" },
  { numero: "B-110", grado: "4to", nivel: "primaria", profesor_dni: "40000009", cede: "norte" },
  { numero: "B-111", grado: "5to", nivel: "primaria", profesor_dni: "40000010", cede: "norte" }
])
