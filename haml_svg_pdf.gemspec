# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haml_svg_pdf/version'

Gem::Specification.new do |spec|
  spec.name          = "haml_svg_pdf"
  spec.version       = HamlSvgPdf::VERSION
  spec.authors       = ["Eiji MATSUMOTO"]
  spec.email         = ["e.mattsan@gmail.com"]

  spec.summary       = %q{Haml to PDF through SVG.}
  spec.description   = %q{Write Haml, Compile to SVG, Generate PDF.}
  spec.homepage      = "https://github.com/mattsan/haml_svg_pdf"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "haml"
  spec.add_dependency "rsvg2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
