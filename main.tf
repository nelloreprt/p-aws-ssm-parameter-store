resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameter)
  name  = var.parameter[count.index].name
  value = var.parameter[count.index].value
  type  = "String"
  key_id = "asdfa546s54654asdf65"
}

resource "aws_ssm_parameter" "secret" {
  count = length(var.secret)
  name  = var.secret[count.index].name
  value = var.secret[count.index].value
  type  = "SecureString"
  key_id = "asdfa546s54654asdf65"
}