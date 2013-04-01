describe "Application 'HelloWorld'" do
  before do
    @app = UIApplication.sharedApplication
    @window = @app.windows[0]
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it "should has a rootViewController" do
  	@window.rootViewController.should.not.equal nil
  end

  it "should use HelloWorldController as the rootViewController" do
  	@window.rootViewController.class.should.equal HelloWorldController
  end
end
