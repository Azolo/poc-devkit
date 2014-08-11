DEVKIT_PATH = "C:\\Ruby\\Devkit"

Gem.pre_install do |gem_installer|
  unless gem_installer.spec.extensions.empty?
    #NOTE: In the orginal DevKit there was an option to only prepend the path
    # if it wasn't already in the path. I decided to always prepend the path
    # so that there wouldn't as many conflicting library problems.
    Gem.ui.say 'Temporarily enhancing PATH to include DevKit...' if Gem.configuration.verbose
    ENV['PATH'] = "#{DEVKIT_PATH}\\bin;#{DEVKIT_PATH}\\mingw\\bin;" + ENV['PATH']

    ENV['RI_DEVKIT'] = DEVKIT_PATH
    ENV['CC'] = 'gcc'
    ENV['CXX'] = 'g++'
    ENV['CPP'] = 'cpp'
  end
end
