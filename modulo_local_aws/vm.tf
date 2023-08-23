resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-08a52ddb321b32a8c"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id           ## aponta para o modulo na pasta network
  vpc_security_group_ids      = [module.network.security_group_id] ## aponta para o modulo na pasta network
  associate_public_ip_address = true
  tags = {
    "Name" = "vm-terraform"
  }
}