describe "HelloWorldController" do
	before do
    @app = UIApplication.sharedApplication
    @window = @app.windows[0]
    @rc = @window.rootViewController
	end

	it "should have a UILabel with text of 'Hello World'" do
		label = @rc.instance_variable_get("@label")
		# check text
		label.text.should.equal "Hello World"
		# make sure it is added on the view
		@rc.view.subviews.should.include? label 
	end

end