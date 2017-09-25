require 'yaml'
require_relative './linker'
require_relative './homebrew'

CFG_PATH = File.realpath(File.join(File.dirname(__FILE__), '../config/'))
YAML_CFG_PATH = File.join(CFG_PATH, 'dot.yaml')

def dot(options)
  config = YAML.load_file YAML_CFG_PATH
  v = options[:verbose]
  Homebrew.ensure_installed v
  Homebrew.bundle CFG_PATH, v
  Linker.link_all config['links'], CFG_PATH, v
end
