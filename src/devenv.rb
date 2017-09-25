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
end