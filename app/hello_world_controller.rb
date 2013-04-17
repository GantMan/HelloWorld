class HelloWorldController < UIViewController
	def viewDidLoad
		p "Hello World"

		@colors = [:white.uicolor, :red.uicolor, :yellow.uicolor, :blue.uicolor]

		ap @colors
		1.second.every do
			view.backgroundColor = @colors.sample
		end
		center_x = view.frame.size.width / 2
		center_y = view.frame.size.height / 2

		@label = UILabel.new
		@label.text = "Hello World"
		@label.sizeToFit
		@label.center = [center_x, center_y]

		view.addSubview(@label)
	end
end