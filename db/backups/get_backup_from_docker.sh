pg_dump -U [USER] -d [db] -F tar -f [path_to_tar_in_container]
docker cp [docker_container_id]:[path_to_tar_in_container] [path_on_disk]

docker cp [path_on_disk] [docker_container_id]:[path_to_tar_in_container]
pg_restore -U [USER] -c -C -d [db] -v -f [path_to_tar_in_container]