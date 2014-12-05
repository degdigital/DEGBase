http_path = "/skin/frontend/enterprise/degbase/"
css_dir = "css"
sass_dir = "css"
images_dir = "images"
javascripts_dir = "js"
output_style = :nested
sourcemap = true

require 'autoprefixer-rails'

on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css, browsers: ['> 5%', 'last 2 versions', 'Android 2.3'])
  end
end