$:.unshift "lib" if File.directory? "lib"

require 'rake/gempackagetask'
desc "make a gem"
Rake::GemPackageTask.new(eval(File.read "gemspec")) do |pkg|
  ruby "pre-install.rb"
  pkg.need_zip = true
  pkg.need_tar = true
end

require 'rake/testtask'
desc "Run the functional and unit tests."
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

require 'rcov/rcovtask'
desc "Run rcov."
Rcov::RcovTask.new do |t|
  t.test_files = FileList['test/test_*.rb'].to_a.reject{|x| /test_functional/ =~ x}
  t.verbose = true
end

desc "Save current coverage state for later comparisons."
Rcov::RcovTask.new(:rcovsave) do |t|
  t.rcov_opts << "--save"
  t.test_files = FileList['test/test_*.rb'].to_a.reject{|x| /test_functional/ =~ x}
  t.verbose = true
end

task :default => :test

# vim: set sw=2 ft=ruby:
