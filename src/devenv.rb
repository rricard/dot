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

  def DevEnv.yarn_install cfg_path, verbose = false
    if verbose
      puts "[INFO] Installing node cli tools using yarn"
    end
    cmd = <<-EOF
      export NVM_DIR="$HOME/.nvm";
      . "/usr/local/opt/nvm/nvm.sh";
      yarn install;
    EOF
    Dir.chdir cfg_path do
      if not system cmd
        raise 'Failed to install packages using yarn'
        exit 1
      end
    end
    if verbose
      puts "[DONE] Installed node cli tools"
    end
  end
end