require 'rails/generators'

module Mvcss
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')

      desc 'This adds mvcss to your Rails project'
      def install
        add_to_manifest
        create_application_layout
      end


      private

      def add_to_manifest
        insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "#{detect_css_format[1]} require mvcss\n", :after => "require_self\n"
      end

      def create_application_layout
        template 'application.html.haml', "app/views/layouts/application.html.haml"
      end

      def detect_css_format
        return ['.css', ' *='] if File.exist?('app/assets/stylesheets/application.css')
        return ['.css.sass', ' //='] if File.exist?('app/assets/stylesheets/application.css.sass')
        return ['.sass', ' //='] if File.exist?('app/assets/stylesheets/application.sass')
        return ['.css.scss', ' //='] if File.exist?('app/assets/stylesheets/application.css.scss')
        return ['.scss', ' //='] if File.exist?('app/assets/stylesheets/application.scss')
      end

    end
  end
end
