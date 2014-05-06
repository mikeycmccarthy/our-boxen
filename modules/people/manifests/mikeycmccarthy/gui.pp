class people::mikeycmccarthy::gui {

  include osx::finder::show_hidden_files
  include osx::dock::clear_dock
  include osx::dock::autohide
  include osx::dock::hide_indicator_lights

  class { 'osx::dock::position':
    position => 'bottom'
  }

}
