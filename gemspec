# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fastri}
  s.version = "0.3.1.2"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Mauricio Fernandez"]
  s.cert_chain = nil
  s.date = %q{2009-05-01}
  s.description = %q{FastRI is an alternative to the ri command-line tool. It is *much* faster, and also allows you to offer RI lookup services over DRb. FastRI is smarter than ri, and can find classes anywhere in the hierarchy without specifying the "full path". FastRI can perform fast full-text searches. It also knows about gems, and can tell you e.g. which extensions to a core class were added by a specific gem.}
  s.email = %q{mfp@acm.org}
  s.bindir = "bin"
  s.executables = ["fri", "qri", "fastri-server", "ri-emacs"]
  s.files = ["bin/fri", "bin/qri", "bin/fastri-server", "bin/ri-emacs", "lib/fastri/ri_index.rb", "lib/fastri/version.rb", "lib/fastri/name_descriptor.rb", "lib/fastri/ri_service.rb", "lib/fastri/util.rb", "lib/fastri/full_text_index.rb", "lib/fastri/full_text_indexer.rb", "CHANGES", "COPYING", "LEGAL", "LICENSE", "Rakefile", "README.en", "test/test_full_text_index.rb", "test/test_name_descriptor.rb", "test/test_integration_full_text_index.rb", "test/test_full_text_indexer.rb", "test/test_functional_ri_service.rb", "test/test_util.rb", "test/test_ri_index.rb", "setup.rb", "pre-install.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://eigenclass.org/hiki/fastri}
  s.post_install_message = %q{
A small note about RubyGems + FastRI
====================================
RubyGems adds a noticeable overhead to fri, making it run slower than if you
installed it directly from the tarball with setup.rb.

Compare the execution time when installed with RubyGems:
  $ time fri -f plain String > /dev/null

  real	0m0.385s
  user	0m0.244s
  sys	0m0.036s

to the time fri actually takes to run, without the overhead introduced by 
RubyGems:
  $ time ruby bin/fri -f plain String > /dev/null

  real	0m0.088s
  user	0m0.040s
  sys	0m0.008s

If you care about those extra 300ms (and there are situations where they will
matter, e.g. when using fri for method completion), get FastRI from the
tarballs.

}
  s.rdoc_options = ["--title", "FastRI: better, faster ri"]
  s.require_paths = ["lib","bin"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{RI docs across machines, faster and smarter than ri.}
  s.test_files = ["test/test_full_text_index.rb", "test/test_name_descriptor.rb", "test/test_integration_full_text_index.rb", "test/test_full_text_indexer.rb", "test/test_functional_ri_service.rb", "test/test_util.rb", "test/test_ri_index.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
