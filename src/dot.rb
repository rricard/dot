require 'yaml'
require_relative './linker'
require_relative './homebrew'
require_relative './devenv'

CFG_PATH = File.realpath(File.join(File.dirname(__FILE__), '../config/'))
YAML_CFG_PATH = File.join(CFG_PATH, 'dot.yaml')

def dot(options)
  config = YAML.load_file YAML_CFG_PATH
  devtools_config = config['devtools_config']
  v = options[:verbose]
  Homebrew.ensure_installed v
  Homebrew.bundle CFG_PATH, v
  DevEnv.nvm_default devtools_config['default_node'], v
  DevEnv.yarn_install CFG_PATH, v
  Linker.link_all config['links'], CFG_PATH, v
end
