require_relative 'lib/stack_loop/version'

Gem::Specification.new do |spec|
  spec.name          = "stack_loop"
  spec.version       = SuperDuper::VERSION
  spec.authors       = ["BuonOmo"]
  spec.email         = ["buonomo.ulysse@gmail.com"]

  spec.summary       = "Unclutted 'stack level too deep' error"
  spec.homepage      = "https://github.com/zombocom/stack_loop"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
