describe Fastlane::Actions::SummonbinAction do
  describe '#run' do
    it 'executes command with scheme' do
      expect(Fastlane::Actions).to receive(:sh).with("summon/bin ci echo \"Hello World!\"")

      Fastlane::Actions::SummonbinAction.run(scheme: "ci", command: "echo \"Hello World!\"")
    end
  end
end
