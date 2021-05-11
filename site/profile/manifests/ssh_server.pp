class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/A6fPsCAdaa8uu4ZT6M68Bbkp/2W6/sxJhiZe1rOuMmBqFAQqroLFN+xW3CCQSm286//RPttXZ1OmhYOyrC33md8qQlzsf6+U8DHopV3DBs9eT1jWKsedwxsUrkjUn7KPUbJzzDbJlr7O+J/utqI3dmMwDNk8qYHKlM7Pnt+cJCvXoDCuO/hqPUWPi6/9GwscBTBaA1bMElFUsoDtNPiiabEYeqhD4EPx8iH0gFR50G6dg/W506HOPSbYDSS7+ts4ke7sthbT+M+rDy3M1uyKVQvX3ssbkSzRDQZG0Z3UU4lIScFSB5SGBDoK5ibZYZd+uLD9sMSHgKzL60frplRp',
        }
}
