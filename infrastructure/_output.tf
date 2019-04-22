// _output.tf
output "dynamodb_rooms_table" {
  value = "${aws_dynamodb_table.ddb-rooms.name}"
}

#output "role_arn" {
#  value = "${aws_iam_role.app.arn}"
#}
