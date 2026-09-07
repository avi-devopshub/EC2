resource "Aaws_instance" "ec2"{
    ami = "ami-0199ac7c9fbf9ed83"
    key_name = "hyderabad"
    instance_type = "t3.micro"
    subnet_id = "subnet-0c5fa63107e14a021"
    tags = {
        Name = "my-ec2"
    }
}