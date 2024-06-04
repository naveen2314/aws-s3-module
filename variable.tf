variable "bucket" {
  description = "Controls if S3 bucket should be created"
  type        = string
  default     = ""
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

variable "versioning" {
  description = "Map containing versioning configuration."
  type        = map(string)
  default     = {}
}

variable "logging" {
  description = "Map containing access bucket logging configuration."
  type        = map(any)
  default = {
    target_bucket  = ""
    target_prefix  = ""
    logging_bucket = ""

  }
}

variable "lifecycle_rule" {
  description = "List of maps containing configuration of object lifecycle management."
  type        = any
  default     = []
}
