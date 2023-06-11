resource "aws_ecr_repository" "app" {
  name = "${var.myname}-test"

  image_scanning_configuration {
    scan_on_push = true
  }
}
