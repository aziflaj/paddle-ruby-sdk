# coding: utf-8
lib = File.expand_path('../paddle', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paddle/version'

Gem::Specification.new do |spec|
  spec.name = 'paddle'
  spec.version = Paddle::VERSION
  spec.authors = ['Aldo Ziflaj']
  spec.email = ['aldoziflaj95@gmail.com']

  spec.summary = %q{The Paddle gem provides Ruby APIs to create, process and manage payment through Paddle API.}
  spec.description = %q{The Paddle gem provides Ruby APIs to create, process and manage payment through Paddle API.}
  spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['paddle']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'dotenv', '~> 2.2'
end
