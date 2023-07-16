resource "aws_key_pair" "key_tf" {
  key_name = "key-tf"
  # public_key = "ssh-rsa AAAABkjfhewjhhjewgtjegjESGRWEAJHnggffjghjbnvcvcndgfdhtwytitiupiolnbnvnghsjadghjdshgjdsagfhjdsgfj= princ@DESKTOP-3CL50OT"
  # or use this 
  public_key = file("${path.module}/id_rsa.pub")
}