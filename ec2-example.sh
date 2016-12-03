#Launch instance in EC2
#AWS needs to be configured using aws configure command before this 

docker-machine create --driver amazonec2 --amazonec2-region=us-east-1 --amazonec2-vpc-id=vpc-5e31ff39 --amazonec2-subnet-id=subnet-ff4a6bc2 aws01
