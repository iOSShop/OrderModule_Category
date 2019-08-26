Pod::Spec.new do |s|

  s.name         = "OrderModule_Category"
  s.version      = "1.0.1"
  s.summary      = "OrderModule_Category."

  s.description  = <<-DESC
                    this is OrderModule_Category
                   DESC

  s.homepage     = "https://github.com/iOSShop/OrderModule_Category"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "cctomato" => "cctomato@outlook.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/iOSShop/OrderModule_Category.git", :tag => s.version }

  s.source_files  = "OrderModule_Category/OrderModule_Category/**/*.{h,m}"

  s.requires_arc = true

  s.dependency "CCMediator"
end
