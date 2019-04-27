module Fastlane
  module Helper
    class SummonbinHelper
      def self.execute(scheme, command)
        Actions.sh("summon/bin #{scheme} #{command}")
      end
    end
  end
end
