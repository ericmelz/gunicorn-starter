aws ec2 run-instances \
   --image-id ami-23e8a343 \
   --key-name alliecat2 \
   --user-data file://instance-setup.sh \
   --count 1 \
   --instance-type t2.micro \
   --iam-instance-profile Name=CodeDeployDemo-EC2-Instance-Profile