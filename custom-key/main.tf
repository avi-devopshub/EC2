resource "aws_key_pair" "custom_key"{
    key_name = "custom_key"
    public_key = file("/root/.ssh/id_ed25519.pub")
}
resource "aws_instance" "ec2"{
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    key_name = aws_key_pair.hyderabad.key_name
    tags = {
        Name = "custom-key"
    }
}