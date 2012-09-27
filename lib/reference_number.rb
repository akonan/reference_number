class ReferenceNumber
  class InvalidReferenceNumber < ArgumentError
  end
  
  attr_accessor :input
  
  def initialize(input, opts = { :zero_padding => false })
    @zero_padding = opts[:zero_padding]
    
    @input = input
    if(@input.is_a? Fixnum)
      @input = @input.to_s
    end

    raise InvalidReferenceNumber, "Input should be between 3 to 19 characters long" if (@input.length < 3 || @input.length > 19)
    raise InvalidReferenceNumber, "Only spaces and numbers are allowed" if (@input =~ /[^ \d]/) != nil

    @input.gsub!(/ /, "")
    @input.sub!(/0*/, "") # remove leading zeros

    raise InvalidReferenceNumber, "Input can't be just spaces and zeroes." if(@input.length == 0)
  end

  def to_s(options = { :zero_padding => false })
    @input.reverse!
    base = "731" * 50

    index = 0
    sum   = 0

    @input.each_byte do |b|
      result = b.chr.to_i * base[index % 3].chr.to_i
      sum = sum + result
      index = index + 1
    end

    # Calculate the last number. If sum = 94 then number is 6.
    difference = (10 - (sum % 10)) % 10
    difference_and_input = "#{difference}#{@input}".reverse

    if @zero_padding
      "%020d" % difference_and_input if @zero_padding
    else
      difference_and_input
    end
  end

end