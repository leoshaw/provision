class users {
  user { 'deployer':
    ensure          => 'present',
    groups          => ['sudo'],
    managehome      => true,
    shell           => '/bin/bash',
  }

  ssh_authorized_key { 'leo':
    ensure => present,
    name   => 'leo@bsd43',
    user   => 'deployer',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/t2j7wWkuXY2GF+Rl1+QVuiDfTkfNb7pD76cDxF3fV/yzbforiFoSSC7PTZHUR78O9pt2dN6D+iqG7xTmtdytm90ifCaDU8anTJ7gM56w1uiXiLkesbLcvO52EFAyRId0wxbTkq2M4yTIaLZvxW9JLql1ne2WpytreDNoNMlbrflnFsbAoTRJE/OC2Dfoy2nnPqhOvkr9jtO7AHKH34yW+eF0yOUP/E3IX9aBt1llfX2pP9X3a2pvM5C83ZlznOgFdwmgug0t39FLkkUdTsFKNIPCFwQaUQHsbYo+ESkGrBkclmNNiUd91+hk+74nnhm5oLOEZY9tkLJ94eFli+m3',
  }
}
