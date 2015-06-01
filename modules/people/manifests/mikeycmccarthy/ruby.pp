class people::mikeycmccarthy::ruby {

  ruby_gem { 'tmuxinator':
    gem          => 'tmuxinator',
    version      => '~> 0.6.10',
    ruby_version => '*',
  }  

}
