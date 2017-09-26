require 'yaml'
require_relative './linker'
require_relative './homebrew'
require_relative './devenv'

DOT_PATH = File.realpath(File.join(File.dirname(__FILE__), '..'))
CFG_PATH = File.join(DOT_PATH, 'config')
YAML_CFG_PATH = File.join(CFG_PATH, 'dot.yaml')

def dot(options)
  if options[:edit_first]
    system 'code', DOT_PATH
    puts "Press ENTER to continue..."
    gets
  end
  config = YAML.load_file YAML_CFG_PATH
  devtools_config = config['devtools_config']
  v = options[:verbose]
  Homebrew.ensure_installed v
  Homebrew.bundle CFG_PATH, v
  DevEnv.nvm_default devtools_config['default_node'], v
  DevEnv.yarn_global_install devtools_config['global_node_packages'], v
  DevEnv.pip3_global_install devtools_config['global_python_packages'], v
  DevEnv.vscode_install devtools_config['vscode_extensions'], v
  Linker.link_all config['links'], CFG_PATH, v
  unless options[:commit_message].nil?
    Dir.chdir DOT_PATH do
      puts "[INFO] Saving the new changes to the repository" if v
      system 'git', 'commit', '-a', '-m', options[:commit_message]
      puts "[DONE] Commited changes with message: #{options[:commit_message]}" if v
      system 'git', 'push', options[:upstream]
      puts "[DONE] Pushed to upstream: #{options[:upstream]}" if v
    end
  end
end
