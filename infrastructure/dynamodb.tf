resource "aws_dynamodb_table" "ddb-rooms" {
  name           = "Rooms"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "RoomName"

  attribute {
    name = "RoomName"
    type = "S"
  }

  tags = {
    Name        = "dynamo-rooms"
    Owner       = "development"
    Project     = "serverless-talk"
    Environment = "staging"
  }
}
