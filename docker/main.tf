module "jenkins" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "docker"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-025a2bcf58839859a"] #replace your SG
  subnet_id = "subnet-03f20ffb2c0cdbe1d" #replace your Subnet
  ami = data.aws_ami.ami_info.id
  user_data = file("docker.sh")
  tags = {
    Name = "docker"
  }
}