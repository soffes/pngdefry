require 'pngdefry/version'
require File.expand_path('../pngdefry.bundle', __FILE__)
require 'fileutils'

module Pngdefry
  def self.defry(input, output)
    # Ensure the output directory exists
    FileUtils.mkdir_p(File.dirname(output))

    # Defry in C
    _defry(input, output)
  end
end
