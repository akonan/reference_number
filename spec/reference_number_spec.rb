require "spec_helper"

describe ReferenceNumber do
    
  it "gives the right reference number when input is right" do
    ReferenceNumber.new(100).to_s.should == "1009"
    ReferenceNumber.new("100").to_s.should == "1009"
    ReferenceNumber.new("000100").to_s.should == "1009"
    ReferenceNumber.new("1000").to_s == "10003"
    ReferenceNumber.new("10000").to_s.should == "100007"
    ReferenceNumber.new("234").to_s.should == "2341"
    ReferenceNumber.new("0234").to_s.should == "2341"
    ReferenceNumber.new("123123123234234234").to_s.should == "1231231232342342349"
    ReferenceNumber.new("1000000000").to_s.should == "10000000003"
  end
  
  it "pads the reference number when asked to" do
    ReferenceNumber.new("100", :zero_padding => true).to_s.should == "00000000000000001009"
  end
  
  it "gives an error, if the input is incorrect" do
    lambda {ReferenceNumber.new("")}.should raise_error(ReferenceNumber::InvalidReferenceNumber)
    lambda {ReferenceNumber.new("     ")}.should raise_error(ReferenceNumber::InvalidReferenceNumber)
    lambda {ReferenceNumber.new("12")}.should raise_error(ReferenceNumber::InvalidReferenceNumber)
    lambda {ReferenceNumber.new(1)}.should raise_error(ReferenceNumber::InvalidReferenceNumber)
    lambda {ReferenceNumber.new("0000")}.should raise_error(ReferenceNumber::InvalidReferenceNumber)
  end
  
end
