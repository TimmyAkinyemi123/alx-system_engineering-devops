# 100-puppet_ssh_config.pp

# Ensure that password authentication is disabled in the SSH client configuration
file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

# Ensure that the SSH client configuration declares the private key file
file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}
