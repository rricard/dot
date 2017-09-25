require 'yaml'
require_relative './linker'

YAML_CFG_PATH = File.realpath(File.join(File.dirname(__FILE__), '../config/dot.yaml'))

def dot(options)
  config = YAML.load_file YAML_CFG_PATH
  Linker.link_all config['links'], options[:verbose]
end
