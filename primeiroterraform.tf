# Definindo o provedor da AWS
provider "aws" {
  region = "us-east-1"  # Você pode mudar a região conforme necessário
}

# Recurso para a instância EC2
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"

  # Chave SSH para acesso (opcional, se você precisar de acesso SSH)
  #key_name = "minha-chave-ssh"  # Substitua pelo nome da sua chave SSH

  # Tags (opcionais)
  tags = {
    Name = "MinhaPrimeiraEC2"
  }
}

# Saída do IP público da instância
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

