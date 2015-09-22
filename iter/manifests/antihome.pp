class iter::antihome (
  $users = [
    'optimusprime',
    'bumblebee',
    'ratchet',
    'jazz',
    'ironhide',
    'jolt',
  ],
) {

  # Create user and group
  # Create home directories for each user

  $users.each |String $user| {
    user { $user:
      ensure     => absent,
      managehome => false,
    }

    group { $user:
      ensure => absent,
    }

    file { "/home/${user}":
      ensure => absent,
      owner  => $user,
      group  => $user,
      mode   => '0755',
      force  => true,
    }
  }

}
