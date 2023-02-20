variable "table_name" {
  description = "Name of DynamoDB table"
  type = string
  default = "live-{{cookiecutter.table.name}}"
}

variable "key_name" {
  description = "Name of hashkey attribute"
  type = string
  default = "{{cookiecutter.table.key_attribute_name}}"
}

variable "ttl_name" {
  description = "Name of the time to live attribute"
  type = string
  default = "{{cookiecutter.table.ttl_attribute_name}}"
}