class HelloWorldController < UIViewController
	def viewDidLoad
		p "Hello World"

		view.backgroundColor = UIColor.whiteColor

		@label = UILabel.new
		@label.text = "Hello World"
		@label.frame = [[50,50], [150, 50]]
		view.addSubview(@label)
	end
end