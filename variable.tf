variable "object_key" {
  description = "object path in  s3 bucket"
  default = "index.html"
}

variable "object_source" {
  description = "path to object in local directory"
  default = "index.html"
}

variable "index_doc_suffix" {
  description = "index document suffix name"
  default = "index.html"
}