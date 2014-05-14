class people::mikeycmccarthy::homebrew {

  notify { 'class people::mikeycmccarthy::homebrew declared': }

  package {
    [
      'docker',
      'boot2docker',
      'chrome-cli'
    ]:
  }

}
