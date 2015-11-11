class baseos {

  # Install repos
  include epel

  # Install base packages
  $packages  = hiera_hash('packages')
  create_resources(package, $packages)

}
