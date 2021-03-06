require 'fileutils'

module Linker
  def Linker.link(src, dst, cfg_path, verbose = false)
    src_path = File.join cfg_path, src
    dst_path = dst.gsub /~/, ENV['HOME']
    if File.exist? dst_path and not File.lstat(dst_path).symlink?
      if verbose
        puts "[INFO] Backup of #{dst} to #{dst}.backup"
      end
      FileUtils.mv dst_path, dst_path + '.backup'
      if verbose
        puts "[DONE] #{dst}.backup created"
      end
    end
    if not File.exist? dst_path
      if verbose
        puts "[INFO] Linking #{src} to #{dst}"
      end
      FileUtils.symlink src_path, dst_path
      if verbose
        puts "[DONE] Linked #{src} to #{dst}"
      end
    end
  end

  def Linker.link_all(links, cfg_path, verbose = false)
    if verbose
      puts "[INFO] Ensuring link for #{links.length} configuration files..."
    end
    links.each do |src, dst|
      Linker.link src, dst, cfg_path, verbose
    end
    if verbose
      puts "[DONE] #{links.length} configuration files are currently linked..."
    end
  end
end