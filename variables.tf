variable "filename" {
  default = "file.txt"
}

variable "content" {
  default = "This is an awesome terrform file"
}

variable "filename2" {
  default = "app.txt"
}

variable "filename3" {
  default = "app.txt"
}


variable "content2" {
  default = "This is a simple app file"
}

variable "prefix" {
  default = "Mr"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "1"
}

variable "file_permission" {
  default = "0700"
}


# types

# list (string)
variable "prefix-name" {
  default = ["Mr", "Mrs", "Ms"]
  type = list(string)
}

# list (number)
variable "fruits" {
  default = ["apple", "banana"]
  type = list(string)
}

# set (string) a set is a list that does not allow duplicates
variable "prefix-name-set" {
  default = ["Mr", "Mrs", "Ms", "Mr"]
  type = set(string)
}


# map
variable file-content{
  default = {
    file1 = "This is file 1, which is a map"
    file2 = "This is file 2, which is also map but for a different file"
  }
  type = map
}

# object
variable "person" {
  type = object({
    name = string
    age = number
    meal = list(string)
    experience = bool
    role = object({
      title = string
      level = number
    })
  })

  default = {
    name = "John"
    age = 30
    meal = ["apple", "banana"]
    experience = true
    role = {
      title = "DevOps"
      level = 2
    }
  }
}

# tuple
variable "info" {
  type = tuple([ string, number, bool ])
  default = ["John", 30, true]
}

