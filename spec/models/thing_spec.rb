require 'spec_helper'

describe Thing do
  describe "autmatically setting an id" do
    before do
      @thing = Thing.create!
    end
    it "should happen when an object is created" do
      @thing.id.should_not be_nil
    end 
    it "should have a UUID as the id" do
      @thing.id.should match(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/)
    end
  end
  describe "manually setting an id" do
    before do
      @uuid = UUIDTools::UUID.timestamp_create.to_s
      @thing = Thing.create! :id => @uuid 
    end
    it "should work" do
      @thing.id.should == @uuid
    end
  end
end
