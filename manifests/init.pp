class baseos {

  # Install repos
  include epel

  # Install base packages
  $packages  = hiera_hash('packages')
  create_resources(package, $packages)

  # Install users
  $users = hiera_hash('users')
  create_resources('@user', $users)
  $groups = hiera_hash('groups')
  create_resources('@group', $groups)
}
