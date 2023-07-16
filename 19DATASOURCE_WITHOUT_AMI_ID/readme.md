
## Rules

1. Create a user in IAM and grand the permission of manging the EC2
2. create a secret key and acces key of user for 
3. ensure that location of ami and provider at code are same 

*Follow the command*
* terraform init 
* terraform validate
* terraform apply

insilizese the key using command ``ssh-keygen -t rsa``
for keep the key in same directory use ``./id_rsa``

#### ingress=> incoming ,
#### egress=> outgoing

 For connecting the server or ssh the server in your pc use command 
 ssh -i id_rsa (servername)@(public-ip)
  example ```ssh -i id_rsa ubuntu@16.170.243.120```

For installing nginx after installing 
 ```sudo apt-get install nginx```
```
 ubuntu@ip-172-31-43-129:~$ cd /var/www/html/
 ubuntu@ip-172-31-43-129:/var/www/html$ ls
 index.nginx-debian.html
 ubuntu@ip-172-31-43-129:/var/www/html$ sudo su
 root@ip-172-31-43-129:/var/www/html#  echo "Hello gupta hum ye sikh gaye" > index.nginx-debian.html
 root@ip-172-31-43-129:/var/www/html#
 ```


### Use this command to generate the graph
 ```terraform graph | dot -Tsvg > graph.svg``` (in svg)
 ```terraform graph | dot -Tpdf > graph.pdf``` (in pdf)




### For adding key pair 
```
resource "aws_key_pair" "key_tf" {
key_name   = "key-tf"
 public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7GbdaSXGHJgLB356d0lg0B7UtzlT852ecEixTisVH26Q/QNxHbmHePjJ8PJ++xv0M0G9YMT+XdcLvq7qzN8CUrsoYXDQDgOFP+ExQ1fgghhhjhjnbICykkbtNxuBjdH/6KTqYEGaEXAx2E7HK/jKwfXxEFeElH0KT2UG1jw6G4iZkaXnipGDAzPhUGFK017ttZAbfug1YplErto2+4DYGscq9BjOyOoBTfjnPEkSnWzoEbJCRF/R/ZV3ya7/1mVVUvDtCYKi6qye192sYi1b6VFoODJrMLBBJuNOnO5ahv0TlQEXC3XJ6gkWpFwCKXwbPx5/8K3+5qDsumscnXXldk78i1KG6cJwQjjzkoz/4bh9owYXlQekCbUSetyvcdwgjD68TeXmXefedFxR4mmyaz40TyTr+44jyjiI5fAYZeAXjKN1KXWgfls4fulA2+JLaij9A8OTsZ0v/IdRTejAeiFyNQSVQQcAFQjIZydH/vCWE+surWuKWlM= princ@DESKTOP-3CL50OT"
}
```
### For creating ther instance 
```
 resource "aws_instance" "web" {
   ami           = "ami-08766f81ab52792ce"
   instance_type = "t3.micro"
   tags = {
     Name = "first-tf-instance"
   } 
 }
 ```


 ##### Non dynamic for create Security Group (here we have to write code too many times)
```
 resource "aws_security_group" "allow_tls" {
   name        = "allow_tls"
   description = "Allow TLS inbound traffic"

 ingress {
   description      = "TLS from VPC"
   from_port        = 443
   to_port          = 443
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }

   ingress {
   description      = "TLS from VPC"
   from_port        = 22
   to_port          = 22
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }

     ingress {
   description      = "TLS from VPC"
   from_port        = 80
   to_port          = 80
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }
     ingress {
   description      = "TLS from VPC"
   from_port        = 3306
   to_port          = 3306
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }

       ingress {
   description      = "TLS from VPC"
   from_port        = 27017
   to_port          = 27017
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }
 
 }
 ```

 ### or Use this for dynamic

```
 resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22, 80, 443, 3306, 27017]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}
```

*terraform taint resource_type.refference name*
 example - ```terraform taint aws_security_group.allow_tls``` 
    This command is use to change(not update) the dammaged resourse in tf state file it will show tennted in tfstate file.

### This is code use for copy the locally saved readme file to instance or EC2
```
  provisioner "file" {
    source      = "readme.md"       #terraform on local machine
    destination = "/tmp/readme.md/" # remote machine
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa")
      host        = self.public_ip
    }
  }
```
  * ``provisioner "local-exec"`` is use to set env variable in local machine or Use run command before and after the create and destroy the ssh.

  * ``provisioner "remote-exec"`` is use to create or run or copy the shellscript in the remote machine (instance)

  * normally ``provisioner`` not use in terraform for config because whenever we run the script file it is ok but if we make any changes in the script file and we reuse the command apply then changes not apper in update for mack changes apper we have to destroy the terraform and re create the file.