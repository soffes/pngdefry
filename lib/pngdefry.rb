require 'pngdefry/version'
require 'pngdefry.so'
require 'fileutils'

module Pngdefry
  def self.defry(input, output)
    # Ensure the output directory exists
    FileUtils.mkdir_p(File.dirname(output))

    # Defry in C
    _defry(input, output)
  end
end
