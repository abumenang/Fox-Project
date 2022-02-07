
resource "aws_iam_role" "Fox-s3fullAccess" {
  name               = "Fox-s3fullAccess"
  assume_role_policy = file("ec2_assume_policy.json")

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy" "Fox-ec2-policy" {
  name = "Fox-ec2-policy"
  role = aws_iam_role.Fox-s3fullAccess.id

  policy = file("iam_policy.json")
}

resource "aws_iam_instance_profile" "Fox-ec2-profile" {
  name = "Fox-ec2-profile"
  role = aws_iam_role.Fox-s3fullAccess.id
}