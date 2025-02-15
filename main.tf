locals {
  mcitstudents = ["Bachir", "Maryam", "Benito"]
  mcitteachers = ["Aldo", "Keyvan", "Haman"]

  # Création d'une liste de paires étudiant-enseignant
  mcit_student_teacher_combo_list = [
    "${local.mcitstudents[0]} - ${local.mcitteachers[0]}",
    "${local.mcitstudents[1]} - ${local.mcitteachers[1]}",
    "${local.mcitstudents[2]} - ${local.mcitteachers[2]}"
  ]
}

# Afficher chaque étudiant
output "students_list" {
  value = [for i in range(length(local.mcitstudents)) : local.mcitstudents[i]]
}

# Afficher chaque enseignant
output "teachers_list" {
  value = [for i in range(length(local.mcitteachers)) : local.mcitteachers[i]]
}

# Afficher chaque paire étudiant-enseignant
output "student_teacher_combo_list" {
  value = [for i in range(length(local.mcit_student_teacher_combo_list)) : local.mcit_student_teacher_combo_list[i]]
}
