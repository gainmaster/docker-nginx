setup() {
  docker history bachelorthesis/nginx >/dev/null 2>&1
}

@test "pacman cache is empty" {
  run docker run bachelorthesis/nginx bash -c "ls -1 /var/cache/pacman/pkg | wc -l"
  [ $status -eq 0 ]
  [ "$output" = "0" ]
}

@test "it should install NGINX 1.6.2" {
  run docker run bachelorthesis/nginx bash -c "/usr/sbin/nginx -v"
  [[ "$output" =~ "1.6.2"  ]]
}

@test "configuration file is ok" {
  run docker run bachelorthesis/nginx bash -c "nginx -t"
  [ $status -eq 0 ]
}

@test "server root folder present" {
  run docker run bachelorthesis/nginx bash -c "stat /srv/http"
  [ $status -eq 0 ]
}

@test  "server root folder correct owner" {
  run docker run bachelorthesis/nginx bash -c "stat -c %U /srv/http/"
  [ "$output" = "http" ]
}

@test  "server root folder correct permissions" {
  run docker run bachelorthesis/nginx bash -c "stat -c %a /srv/http/"
  [ "$output" = "755" ]
}

@test "it should log to STDOUT" {
  curl localhost > /dev/null 2>&1
  [[ -s /tmp/nginx.log ]]
}