class HelloWorldController < UIViewController
	def viewDidLoad
		p "Hello World"

		# Made better with Sugarcube
		# @colors = [UIColor.whiteColor, UIColor.redColor]
		@colors = [:white.uicolor, :red.uicolor, :yellow.uicolor, :blue.uicolor]

		1.second.every do
			view.backgroundColor = @colors.sample
		end

		# see the magic of Awesome Print!
		ap @colors
		
		center_x = view.frame.size.width / 2
		center_y = view.frame.size.height / 2

		@label = UILabel.new
		@label.text = "Hello World"
		@label.sizeToFit
		@label.center = [center_x, center_y]

		view.addSubview(@label)
	end
end