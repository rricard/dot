module DevEnv
  def DevEnv.nvm_default version, verbose = false
    if not system "node -v | grep #{version} || false"
      if verbose
        puts "[INFO] Setting default node version to #{version}"
      end
      cmd = <<-EOF
        export NVM_DIR="$HOME/.nvm";
        . "/usr/local/opt/nvm/nvm.sh";
        nvm install #{version};
        nvm alias default #{version};
      EOF
      if not system cmd
        raise 'Failed to set the node version'
        exit 1
      end
      if verbose
        puts "[DONE] Default node version set to #{version}"
      end
    end
  end

  def DevEnv.yarn_global_install packages, verbose = false
    puts "[INFO] Installing #{packages.length} node packages globally using yarn" if verbose
    cmd = <<-EOF
      export NVM_DIR="$HOME/.nvm";
      . "/usr/local/opt/nvm/nvm.sh";
      yarn global add "#{packages * '" "'}";
    EOF
    if not system cmd
      raise "Failed to install #{packages.length} packages using yarn"
      exit 1
    end
    puts "[DONE] Installed #{packages.length} node packages globally using yarn" if verbose
  end

  def DevEnv.vscode_install extensions, verbose = false
    if verbose
      puts "[INFO] Installing #{extensions.length} VSCode extensions"
    end
    for ext in extensions
      system 'code', '--install-extension', ext
    end
    if verbose
      puts "[DONE] Installed #{extensions.length} VSCode extensions"
    end
  end
end