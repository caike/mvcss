module Mvcss
  class Engine < ::Rails::Engine
    # Save this block, we'll use it in two calls to .initializer
    add_paths_block = lambda { |app|
      app.config.assets.paths << File.expand_path("../../../sass", __FILE__)

      # Ensure Zepto and Modernizr are precompiled in production
      app.config.assets.precompile += %w()
    }

    # Standard initializer
    initializer 'mvcss.update_asset_paths', &add_paths_block

    # Special initializer lets us precompile assets without fully initializing
    initializer 'update_asset_paths', :group => :assets, &add_paths_block

  end
end
