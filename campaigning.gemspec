# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{campaigning}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcelo Menezes"]
  s.date = %q{2009-05-02}
  s.email = %q{gnumarcelo@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "TODO.txt",
    "VERSION.yml",
    "lib/campaigning.rb",
    "lib/campaigning/campaigning.rb",
    "lib/campaigning/helpers/helpers.rb",
    "lib/campaigning/soap/default.rb",
    "lib/campaigning/soap/defaultDriver.rb",
    "lib/campaigning/soap/defaultMappingRegistry.rb",
    "lib/campaigning/types/campaign.rb",
    "lib/campaigning/types/client.rb",
    "lib/campaigning/types/list.rb",
    "lib/campaigning/types/subscriber.rb",
    "test/campaigning_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/gnumarcelo/campaigning}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{This RubyGem provides access to the CampaignMonitor API(www.campaignmonitor.com/api) using SOAP.}
  s.test_files = [
    "test/campaigning_test.rb",
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
