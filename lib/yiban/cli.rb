require 'thor'
require 'active_support/core_ext/string'
require 'yiban'

module Yiban
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.expand_path('../..', __dir__)
    end

    desc 'config', 'change settings'
    def config

      config_path = Dir.home + '/.yiban'
      if Dir.exist?(config_path)
        puts "Your current name is [#{Yiban.config[:name]}]."
      else
        template 'templates/settings.yml.tt', "http://#{config_path}/settings.yml"
      end
    end


    desc 'yiban 单词/句子 ', '建議标题'
    def word(word)
      puts Yiban::Text.new(word).json
    end

    private

    def display_name(name)
      puts name
    end
  end
end
