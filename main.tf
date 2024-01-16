resource "local_file" "newText" {
  content  = var.content
  filename = var.filename
  file_permission = var.file_permission
}

resource "local_file" "app" {
  content  = var.person.name
  filename = var.filename2
}

resource "local_file" "app" {
  content  = var.person.name
  filename = var.filename2
}

resource "random_pet" "pet" {
  prefix = var.prefix-name[0]
  separator = "."
  length = "1"
}
