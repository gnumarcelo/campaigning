# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{campaigning}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcelo Menezes"]
  s.date = %q{2009-04-16}
  s.email = %q{gnumarcelo@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/campaigning.rb",
    "lib/campaigning/apiClient.rb",
    "lib/campaigning/campaigning.rb",
    "lib/campaigning/client.rb",
    "lib/campaigning/default.rb",
    "lib/campaigning/defaultDriver.rb",
    "lib/campaigning/defaultMappingRegistry.rb",
    "test/campaigning_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/gnumarcelo/campaigning}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "test/campaigning_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, ["~> 1.5.0"])
    else
      s.add_dependency(%q<soap4r>, ["~> 1.5.0"])
    end
  else
    s.add_dependency(%q<soap4r>, ["~> 1.5.0"])
  end
end
