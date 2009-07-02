# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{campaigning}
  s.version = "0.11.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcelo Menezes"]
  s.date = %q{2009-07-02}
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
    "lib/campaigning/campaign.rb",
    "lib/campaigning/campaigning.rb",
    "lib/campaigning/client.rb",
    "lib/campaigning/list.rb",
    "lib/campaigning/module_mixin.rb",
    "lib/campaigning/soap/generated/default.rb",
    "lib/campaigning/soap/generated/defaultDriver.rb",
    "lib/campaigning/soap/generated/defaultMappingRegistry.rb",
    "lib/campaigning/subscriber.rb",
    "test/campaign_test.rb",
    "test/campaigning_test.rb",
    "test/client_test.rb",
    "test/list_test.rb",
    "test/subscriber_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/gnumarcelo/campaigning}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{TODO}
  s.test_files = [
    "test/campaign_test.rb",
    "test/campaigning_test.rb",
    "test/client_test.rb",
    "test/list_test.rb",
    "test/subscriber_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, ["~> 1.5.0"])
    else
      s.add_dependency(%q<soap4r>, ["~> 1.5.0"])
    end
  else
    s.add_dependency(%q<soap4r>, ["~> 1.5.0"])
  end
end
