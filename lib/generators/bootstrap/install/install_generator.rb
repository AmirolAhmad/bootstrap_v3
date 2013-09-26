require 'rails/generators'

module Bootstrap
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Bootstrap V3 Framework to Asset Pipeline"

      def add_assets
        # copy js manifest
        js_manifest = 'app/assets/javascripts/bootstrap.js'

        if File.exist?(js_manifest)
          puts <<-EOM
          Notice:
            #{js_manifest} exist; skipping
          EOM
        else
          copy_file "bootstrap.js", "app/assets/javascripts/bootstrap.js"
        end

        # copy less manifests
        css_manifests = 'app/assets/stylesheets/bootstrap'

        if File.directory?(css_manifests)
          puts <<-EOM
          Notice:
            #{css_manifests} exist; skipping
          EOM
        else
          directory "bootstrap", css_manifests, :recursive => true
        end

      end
    end
  end

end