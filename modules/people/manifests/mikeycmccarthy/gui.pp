class people::mikeycmccarthy::gui {

  include osx::finder::show_hidden_files
  include osx::dock::clear_dock
  include osx::dock::autohide
  include osx::dock::hide_indicator_lights
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores
  include osx::global::natural_mouse_scrolling

  class { 'osx::dock::position':
    position => 'bottom'
  }

}
