resource "local_file" "newText" {
  content  = "This is a new text file"
  filename = "file.txt"
  file_permission = "0700"
}

resource "local_file" "app" {
  content  = "This is an app file"
  filename = "app.txt"
}

resource "random_pet" "pet" {
  prefix = "Mr"
  separator = "."
  length = "1"
}
