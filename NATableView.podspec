Pod::Spec.new do |s|
  s.name             = 'NATableView'
  s.version          = '1.0.0'
  s.summary          = 'Wrapper for UITableView, UITableViewDataSource and UITableViewDelegate.'

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
end
