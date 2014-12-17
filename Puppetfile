# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.9.0"

# Support for default hiera data in modules

github "module-data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.6.0"
github "go",          "2.1.0"
github "homebrew",    "1.11.1"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.2.0"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# github "skype",       "1.0.8"
# github "vagrant",     "3.1.1"
# github "virtualbox",  "1.0.12"
# github "chrome",      "1.1.2"
# github "wget",        "1.0.1"
# github "dropbox",     "1.2.0"
# github "googledrive", "1.0.2"
# github 'iterm2',      "1.1.2"
# github 'firefox',     "1.2.0"
# github "osx",         "2.7.0"
# github "kindle",      "1.0.1"
# github "zsh",         "1.0.0"
# github "cyberduck",   "1.0.1"
# github "intellij",    "1.5.1"
# github "quicksilver", "1.3.0"
# github "evernote",    "2.0.6"
