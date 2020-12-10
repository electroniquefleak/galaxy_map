require_relative 'lib/galaxy_map/version'

Gem::Specification.new do |spec|
  spec.name          = "galaxy_map"
  spec.version       = GalaxyMap::VERSION
  spec.authors       = ["Hunter"]
  spec.email         = ["fleakhunter@gmail.com"]

  spec.summary       = "This is a summary."
  spec.description   = "This is a description."
  spec.homepage      = "https://github.com/electroniquefleak/galaxy_map.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.1")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/electroniquefleak/galaxy_map.git"
  spec.metadata["changelog_uri"] = "https://github.com/electroniquefleak/galaxy_map"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
