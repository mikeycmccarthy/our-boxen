class people::mikeycmccarthy::shell {

   $home = "/Users/${::boxen_user}"
   $dotfiles = "${boxen::config::srcdir}/dotfiles"

   repository { $dotfiles:
     source => "mikeycmccarthy/dotfiles"
   }

   file { "${home}/.zshrc":
     ensure  => link,
     mode  => '0644',
     target  => "${dotfiles}/.zshrc",
     require => Repository[$dotfiles]
   }

   include zsh
   include python

   repository { "/Users/${boxen_user}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh',
   }

}
