resource "aws_security_group" "allow_webserver" {
  name        = "allow_webserver_firja_2"
  description = "Allow inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01d674b67b98e4299"

  # Aturan untuk trafik masuk (ingress)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Mengizinkan akses SSH dari mana saja
  }

  ingress {
  from_port   = 0      # Mengizinkan akses dari semua port
  to_port     = 0      # Mengizinkan akses ke semua port
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]  # Mengizinkan akses dari mana saja
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Mengizinkan akses HTTP dari mana saja
  }

  # Aturan untuk trafik keluar (egress)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Mengizinkan semua protokol keluar
    cidr_blocks = ["0.0.0.0/0"]  # Mengizinkan koneksi keluar ke mana saja
  }

  tags = {
    Name = "allow_webserver_firja_2"
  }
}
