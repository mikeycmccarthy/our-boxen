class people::mikeycmccarthy::gui {

  include osx::finder::show_hidden_files
  include osx::dock::clear_dock

  class { 'osx::dock::position':
    position => 'bottom'
  }

}
