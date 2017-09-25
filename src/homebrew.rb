module Homebrew
  def Homebrew.ensure_installed(verbose = false)
    if not system 'brew help > /dev/null'
      if verbose
        puts "[INFO] homebrew is not on the system"
      end
      puts "Homebrew will now be installed. Please follow the next instructions..."
      system '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
      if not system 'which', 'brew'
        raise 'Homebrew installation failed'
        exit 1
      end
      if verbose
        puts "[DONE] homebrew is now installed"
      end
    end
  end

  def Homebrew.bundle(cfg_path, verbose = false)
    if verbose
      puts "[INFO] launching an hombrew bundling"
    end
    Dir.chdir cfg_path do
      if not system 'brew', 'bundle'
        raise 'Homebrew bundling failed'
        exit 1
      end
    end
    if verbose
      puts "[DONE] homebrew bundled new software"
    end
  end
end