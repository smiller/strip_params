require 'spec_helper'

describe StripParams do

  context "single param" do
    describe "string" do
      it "should strip" do
        StripParams.all!(:key => "email@dev.null ").should == 
          {:key => "email@dev.null"}
      end
    end
    describe "number" do 
      it "should be unchanged" do
        StripParams.all!(:key => 42).should == {:key => 42}
      end
    end
    describe "nil" do
      it "should be unchanged" do
        StripParams.all!(:key => nil).should == {:key => nil}
      end
    end
  end

  context "nested params" do
    describe "string" do
      it "should strip" do
        StripParams.all!(:inner => {:key => "email@dev.null "}).should ==
          {:inner => {:key => "email@dev.null"}}
      end
    end
    describe "number" do 
      it "should be unchanged" do
        StripParams.all!(:inner => {:key => 42}).should ==
          {:inner => {:key => 42}}
      end
    end
    describe "nil" do
      it "should be unchanged" do
        StripParams.all!(:inner => {:key => nil}).should == 
          {:inner => {:key => nil}}
      end
    end
  end

  context "doubly-nested params" do
    describe "string" do
      it "should strip" do
        StripParams.all!(:outer => {:inner => {:key => "email@dev.null "}})
          .should == {:outer => {:inner => {:key => "email@dev.null"}}}
      end
    end
    describe "number" do 
      it "should be unchanged" do
        StripParams.all!(:outer => {:inner => {:key => 42}}).should ==
          {:outer => {:inner => {:key => 42}}}
      end
    end
    describe "nil" do
      it "should be unchanged" do
        StripParams.all!(:outer => {:inner => {:key => nil}}).should == 
          {:outer => {:inner => {:key => nil}}}
      end
    end
  end

end
