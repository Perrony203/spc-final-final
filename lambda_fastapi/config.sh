# Autenticar la máquina
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 288418346441.dkr.ecr.us-east-2.amazonaws.com

# Contruir la imagen
docker build --platform linux/amd64 --provenance=false -t spc-final .

# Asignar tag a la imagen
docker tag spc-final:latest 288418346441.dkr.ecr.us-east-2.amazonaws.com/spc-final:latest

# Subir la imagen al ECR(push)
docker push 288418346441.dkr.ecr.us-east-2.amazonaws.com/spc-final:latest