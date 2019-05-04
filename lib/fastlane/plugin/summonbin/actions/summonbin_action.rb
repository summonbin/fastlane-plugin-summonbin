require "fastlane/action"
require_relative "../helper/summonbin_helper"

module Fastlane
  module Actions
    class SummonbinAction < Action
      def self.run(params)
        Helper::SummonbinHelper.execute(params[:scheme], params[:command])
      end

      def self.description
        "Execute command with summonbin"
      end

      def self.authors
        ["Jason Nam"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :scheme,
                              short_option: "-s",
                                  env_name: "SUMMONBIN_DEFAULT_SCHEME",
                               description: "Scheme to use",
                                  optional: true,
                             default_value: :debug,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :command,
                              short_option: "-c",
                               description: "Command to execute",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
