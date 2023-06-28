


resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "first-tf-instance"
  }

  # for write script in ssh
  user_data = file("${path.module}/script.sh")


  # for multiple file provisioner 
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/id_rsa")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "readme.md"      #terraform machine
    destination = "/tmp/readme.md" # remote machine

  }
  provisioner "file" {
    content     = "this is test content" #terraform machine
    destination = "/tmp/content.md"      # remote machine

  }


  #  provisioner "local-exec" {
  #   working_dir = "/tmp/"
  #   command = "echo ${self.public_ip} >> mypublicip.txt "
  # }

  # provisioner "local-exec" {
  #   command = "echo ${self.public_ip} >> mypublicip.txt "
  # }

  provisioner "local-exec" {
    when    = create
    command = "echo 'u can write a script for instance when u r starting'"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "echo 'u can write a script for back up the data in local storage or different instance before destroying the instance'"
  }
  provisioner "local-exec" { # inherits the current process environment.
    on_failure = continue    # if provision fail terraform apply will not fail and continue the apply
    command    = "env>env.txt"
    environment = {
      envname = "envvalue"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "ifconfig > /tmp/if/config.output",
      "echo 'hello Prince'>/tmp/test.txt"
    ]
  }
  provisioner "remote-exec" {
    script = "./testscript.sh"
  }
}


# Rules

# create a user in IAM and grand the permission of manging the EC2
# create a secret key and acces key of user for 
# ensure that location of ami and provider at code are same 
# terraform init 
# terraform validate
# terraform apply

# insilizese the key using command ssh-keygen -t rsa
# for keep the key in same directory use ./id_rsa

# ingress=> incoming , egress=> outgoing

# for connecting the server or ssh the server in your pc use command ssh -i id_rsa (servername)@(public-ip) example (ssh -i id_rsa ubuntu@16.170.243.120)


# sudo apt-get install nginx

# ubuntu@ip-172-31-43-129:~$ cd /var/www/html/
# ubuntu@ip-172-31-43-129:/var/www/html$ ls
# index.nginx-debian.html
# ubuntu@ip-172-31-43-129:/var/www/html$ sudo su
# root@ip-172-31-43-129:/var/www/html#  echo "Hello gupta hum ye sikh gaye" > index.nginx-debian.html
# root@ip-172-31-43-129:/var/www/html#
