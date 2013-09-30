# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

require 'sugarcube-classic'
require 'sugarcube-repl'
require 'sugarcube-uikit'
require 'teacup'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'StatusBarDemo'
  app.resources_dirs += ['resources']

  # Setting the statusbarstyle to a light style
  app.info_plist['UIViewControllerBasedStatusBarAppearance'] = false
  app.info_plist['UIStatusBarStyle'] = "UIStatusBarStyleDefault"
end
