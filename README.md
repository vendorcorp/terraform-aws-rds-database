# Terraform Module: AWS RDS Database

This repository contains a Terraform Module that creates a Database and User in an existing AWS RDS Cluster.

It has some pre-requisites:
- You have already got a PostgreSQL service available, know where it is and have ADMIN access to it

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.6.0 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | >= 1.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | >= 1.15.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_database.database](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/database) | resource |
| [postgresql_role.role](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/role) | resource |
| [random_string.pg_user_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Name of the Database to create in the AWS RDS Cluster. | `string` | `null` | no |
| <a name="input_pg_admin_password"></a> [pg\_admin\_password](#input\_pg\_admin\_password) | Administrator/Root password to access your PostgreSQL service. | `string` | `null` | no |
| <a name="input_pg_admin_username"></a> [pg\_admin\_username](#input\_pg\_admin\_username) | Administrator/Root user to access your PostgreSQL service. | `string` | `null` | no |
| <a name="input_pg_hostname"></a> [pg\_hostname](#input\_pg\_hostname) | The hostname where your PostgreSQL service is accessible at. | `string` | `null` | no |
| <a name="input_pg_port"></a> [pg\_port](#input\_pg\_port) | The port where your PostgreSQL service is accessible at. | `string` | `null` | no |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | Password for the User being created in AWS RDS Cluster. If a password is not supplied, one will be generated. | `string` | `null` | no |
| <a name="input_user_username"></a> [user\_username](#input\_user\_username) | Username of User to create in AWS RDS Cluster. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | Name of of the newly created Database. |
| <a name="output_user_password"></a> [user\_password](#output\_user\_password) | Password assigned to the newly created database user. |
| <a name="output_user_username"></a> [user\_username](#output\_user\_username) | Username of the newly created database user. |

# The Fine Print

At the time of writing I work for Sonatype, and it is worth nothing that this is **NOT SUPPORTED** by Sonatype - it is purely a contribution to the open source community (read: you!).

Remember:
- Use this contribution at the risk tolerance that you have
- Do NOT file Sonatype support tickets related to cheque support in regard to this project
- DO file issues here on GitHub, so that the community can pitch in