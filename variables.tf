# --------------------------------------------------------------------------
#
# Copyright 2023-Present Sonatype Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# --------------------------------------------------------------------------

variable "pg_hostname" {
  description = "The hostname where your PostgreSQL service is accessible at."
  type        = string
  default     = null
}

variable "pg_port" {
  description = "The port where your PostgreSQL service is accessible at."
  type        = string
  default     = null
}

variable "pg_admin_username" {
  description = "Administrator/Root user to access your PostgreSQL service."
  type        = string
  default     = null
}

variable "pg_admin_password" {
  description = "Administrator/Root password to access your PostgreSQL service."
  type        = string
  default     = null
  sensitive   = true
}

variable "database_name" {
  description = "Name of the Database to create in the AWS RDS Cluster."
  type        = string
  default     = null
  validation {
    condition     = var.database_name != null
    error_message = "Name of the Database must be supplied."
  }
  validation {
    condition     = length(regex("[A-Za-z][0-9A-Za-z-_]{1,63}", var.database_name)) > 6
    error_message = "Name of the Database should be greater than six characters and must begin with a character."
  }
}

variable "user_username" {
  description = "Username of User to create in AWS RDS Cluster."
  type        = string
  default     = null
  validation {
    condition     = var.user_username != null
    error_message = "Username of User must be supplied."
  }
  validation {
    condition     = length(regex("[A-Za-z][0-9A-Za-z-_]{1,63}", var.user_username)) > 6
    error_message = "Username should be greater than six characters and must begin with a character."
  }
}

variable "user_password" {
  description = "Password for the User being created in AWS RDS Cluster. If a password is not supplied, one will be generated."
  type        = string
  default     = null
  sensitive   = true
  # validation {
  #   condition     = var.user_password != null
  #   error_message = "Password for the User cannot be empty."
  # }
  # validation {
  #   condition     = length(var.user_password) > 8
  #   error_message = "Password should be 8 characters or longer."
  # }
}