class users {
  user { 'leo':
    ensure          => 'present',
    managehome      => true,
  }

  ssh_authorized_key { 'leo':
    ensure => present,
    name   => 'leo@bsd43',
    user   => 'leo',
    type   => 'rsa',
    shell  => '/bin/bash',
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxCt5JSGdcDvN0z2G6bUexl2uITdqlylC/2bj1o7JQUlGfM3uOSA1NBjVsMhdAJM4L921Ejt3btH4awesNWgY+XPgk2LJ/Qc4/+LRLZfDNaGYY/+Foin0/aOrffB8P4GULC+T2MpPaAX/b7vdM2uD3tEBH5uWRbIx1lRi4IEUhF2dfIpKqbfqnYrya+pIWhiTnX0Ah1teR3CoSd05jKMDTr9we8yFB48x4gbw6qUL4RWzSZEuQw3Et7G2GLJDiv8jORYVWAHQ5VsuUJA3LwK0nmdTqdyryPZX0WVxYST0uiFJRTEokSgtYlUZy9aymsoKbyoowsE1iyrzcuVNr8GBMw==',
  }
}
