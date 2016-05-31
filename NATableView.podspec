#
# Be sure to run `pod lib lint NATableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NATableView'
  s.version          = '0.1.0'
  s.summary          = 'Wrapper for UITableView, UITableViewDataSource and UITableViewDelegate.'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Wrapper for UITableView, UITableViewDataSource and UITableViewDelegate.
  Convenient when displaying a bounded number of cells (less than 20)
                       DESC

  s.homepage         = 'https://github.com/nickager/NATableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nick Ager' => 'nick.ager@gmail.com' }
  s.source           = { :git => 'https://github.com/nickager/NATableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NATableView/Classes/**/*'

  # s.resource_bundles = {
  #   'NATableView' => ['NATableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
