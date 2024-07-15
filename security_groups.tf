# resource "aws_security_group" "testing_ec2_alb_sg" {
#   name_prefix   = "${var.env_prefix}-alb-sg"
#   description   = "Security group for testing EC2 ALB"
#   vpc_id        = var.vpc_id

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#     description = "Allow access to all 10 address in the AWS environment"
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#     description = "Allow access to all 10 address in the AWS environment"
#   }

#   egress {
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#     description = "Egress rule for ALB"
#   }

#   tags = {
#     EnvPrefix     = var.env_prefix
#     ApplicationID = var.application_id
#   }
# }

# resource "aws_security_group" "testing_ec2_sg" {
#   name_prefix   = "${var.env_prefix}-ec2-sg"
#   description   = "Security group for EC2 instance"
#   vpc_id        = var.vpc_id

#   ingress {
#     from_port                = 0
#     to_port                  = 65535
#     protocol                 = "tcp"
#     cidr_blocks              = ["10.0.0.0/8"]
#     description              = "Egress rule for EC2 instance"
#     security_groups          = [aws_security_group.testing_ec2_alb_sg.id]
#   }

#   tags = {
#     EnvPrefix     = var.env_prefix
#     ApplicationID = var.application_id
#   }
# }
