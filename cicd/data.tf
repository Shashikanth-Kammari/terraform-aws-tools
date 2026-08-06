
data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["620549678005"]

    filter {
        name   = "name"
        values = ["Devops"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

# data "aws_ami" "nexus_ami_info" {

#     most_recent = true
#     owners = ["679593333241"]

#     filter {
#         name   = "name"
#         values = ["SolveDevOps-Nexus-Server-Ubuntu20.04-20240511-*"]
#     }

#     filter {
#         name   = "root-device-type"
#         values = ["ebs"]
#     }

#     filter {
#         name   = "virtualization-type"
#         values = ["hvm"]
#     }
# }