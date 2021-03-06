# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter/bootstrap/rails/version"

Gem::Specification.new do |s|
  s.name        = "twitter-bootstrap-turbo"
  s.version     = Twitter::Bootstrap::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Estes","Seyhun Akyurek"]
  s.email       = ["davydotcom@gmail.com"]
  s.homepage    = "https://github.com/davydotcom/twitter-bootstrap-rails"
  s.summary     = %q{Bootstrap CSS toolkit for Rails 3.1 Asset Pipeline with Turbolinks support}
  s.description = %q{twitter-bootstrap-rails project integrates Bootstrap CSS toolkit for Rails 3.1 Asset Pipeline and turbolinks}

  s.rubyforge_project = "twitter-bootstrap-turbo"
  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + Dir["app/**/*"] + ["Rakefile", "README.md"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency             'railties',   '>= 3.1'
  s.add_dependency             'actionpack', '>= 3.1'
  s.add_runtime_dependency 'execjs'
  s.add_development_dependency 'rails', '>= 3.1'
  s.add_development_dependency 'less'
  s.add_development_dependency 'therubyracer'
  s.post_install_message = "Important: You may need to add a javascript runtime to your Gemfile in order for bootstrap's LESS files to compile to CSS. \n\n" \
  "**********************************************\n\n" \
  "ExecJS supports these runtimes:\n\n" \
  "therubyracer - Google V8 embedded within Ruby\n\n" \
  "therubyrhino - Mozilla Rhino embedded within JRuby\n\n" \
  "Node.js\n\n" \
  "Apple JavaScriptCore - Included with Mac OS X\n\n" \
  "Microsoft Windows Script Host (JScript)\n\n" \
  "**********************************************"
end
