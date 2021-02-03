Pod::Spec.new do |s|
  s.name             = 'NATableView'
  s.version          = '5.2.0'
  s.summary          = 'Wrapper for UITableView, UITableViewDataSource and UITableViewDelegate.'

  s.description      = <<-DESC
  Wrapper for UITableView, UITableViewDataSource and UITableViewDelegate.
  Convenient when displaying a bounded number of cells (less than 20)
                       DESC

  s.homepage         = 'https://github.com/nickager/NATableView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nick Ager' => 'nick.ager@gmail.com' }
  s.source           = { :git => 'https://github.com/nickager/NATableView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5'

  s.source_files = 'NATableView/Classes/**/*'
end
