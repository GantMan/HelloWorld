describe "HelloWorldController" do
	tests HelloWorldController

	it "has a UILabel with text correct text" do
		label = controller.instance_variable_get("@label")
		# check text
		label.text.should.equal "Hello World"
		# make sure it is added on the view
		controller.view.subviews.should.include? label 
	end

end