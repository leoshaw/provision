class users {
  user { 'deployer':
    ensure          => 'present',
    groups          => ['sudo'],
    managehome      => true,
    shell           => '/bin/bash',
    password        => 'bob',
  }

  ssh_authorized_key { 'leo':
    ensure => present,
    name   => 'leo@leoshaw.co.uk',
    user   => 'deployer',
    type   => 'rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDagXE1pVGvlC1xA8+Zx6VCotZgodugifIk4S8+kZpOpThQNFNze9sz3OE9q1dhHdVXihImurGVW+XRWYv74qh7EnwTWmvJhmCq0zPudG5ZUEmvbKtEvSZyr6M8WGmQAgiNkPNAMZ4r3XcJ0shBzrY/Asqa/sMOzU5OkWOolUa8o1vYmmsXtnBvW/8U6XA4zc8GVClSitpe5NchceHzS7c16s3KrD/8ZhFxQVX9Ik/NNMdsXF7Whx8quBqBqUjdRUpkREAsHXMnCU+D1jsFjpVRMHRHuXDNubX2ZK72KnEymtVYmFdO7ocgt86FQT/JILR8CMTnGJb45YFGnQjNKkCGW/swyBu31+dZT7y1MoOUhdOl9uRfhPyVrolaSG+I+FHybUj+NdCByVZ4948hoquD/CeXG1lrOj1GsbhXh4mlJrWq1PMD7F/zTXxjDI+Cp/R9p4WBLkn4S8JfgfkYxTIdP9fsbDjWXYRwSfMlgRkBkEcYTqPZnDgA0VtWICT56jxYGgVnxCwStxKyLntszWEFgvsok6oVYtn+N/m6QT5u6jFG3yU/H846TtNlKhFolv3UwG5Y/x07YouUe35utt9VSPCTvvsUA2mbYSgNXpMTX4hEC1bH4dIBQWzkCoGiS40S6lEKqzXXq9Nsjj2sOKTb144HKalbSPeAYvHaW0scmQ==',
  }
}
