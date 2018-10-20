# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jasper2"
  spec.version       = "2.1.9"
  spec.authors       = ["Rui Pires"]
  spec.email         = ["rui@sennin.pt"]

  spec.summary       = "full-featured port of Ghost's default theme Casper v2.1.9 for Jekyll / GitHub Pages."
  spec.homepage      = "https://github.com/jekyller/jasper2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_plugins|about|_data|_posts)!i) }
  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
