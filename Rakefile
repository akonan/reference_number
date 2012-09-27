require "bundler"
Bundler.setup

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("reference_number.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["reference_number.gemspec"] do
  system "gem build reference_number.gemspec"
  system "gem install reference_number-#{ReferenceNumber::VERSION}.gem"
end
