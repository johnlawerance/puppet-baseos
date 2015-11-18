class baseos {

  # Install repos
  include epel

  # Install base packages
  $packages  = hiera_hash('packages')
  create_resources(package, $packages)

  # Install users,groups / manage keys
  $users = hiera_hash('users')
  create_resources('user', $users)

  $groups = hiera_hash('groups')
  create_resources('group', $groups)

  $ssh_authorized_keys = hiera_hash('ssh_authorized_keys')
  create_resources('ssh_authorized_key', $ssh_authorized_keys)

}
