variable "common" {
  type = map(string)
  default = {
    rsg_name     = "somic"
    rsg_location = "Japan East"
  }
}

variable "storage" {
  type = map(string)
  default = {
    asa_name = "asa20210323110335"
    asc_name = "asc20210323110335"
  }
}
