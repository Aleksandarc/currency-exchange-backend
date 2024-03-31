case $1 in
  "build")

  cho "Creating compiled container"
  docker build . -t microservices-compiler

  docker run -v ${pwd}:/home/compiler/ microservices-compiler

  docker rmi mciroservices-compiler --force

  echo "completed"

  ;;
"run")
  docker compose -p "microservices" up -d --force-recreate --build

;;
esac