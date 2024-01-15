resource "local_file" "newText" {
  content  = var.content
  filename = var.filename
  file_permission = var.file_permission
}

resource "local_file" "app" {
  content  = var.content2
  filename = var.filename2
}

resource "random_pet" "pet" {
  prefix = "Mr"
  separator = "."
  length = "1"
}
