resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.test_it_works.id
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_administratoraccess_amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  user       = aws_iam_user.test_it_works.name
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_amazonec2fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = aws_iam_user.test_it_works.id
}

resource "aws_iam_user_policy_attachment" "admin_nitzantestnumber_arn_aws_iam__aws_policy_amazons3fullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = aws_iam_user.test_it_works.name
}

