# ReferenceNumber

Ruby library for calculating reference number (viitenumero, referensnummer).

Original idea and code was gotten from Christian:
http://snippets.aktagon.com/snippets/51-How-to-Calculate-a-reference-number-with-Ruby

[![Build Status](https://secure.travis-ci.org/akonan/reference_number.png)](http://travis-ci.org/akonan/reference_number)

## Usage

Add this to your gem file:

    gem "reference_number"

Example usage:

    ReferenceNumber.new("1111").to_s
    ReferenceNumber.new(1111).to_s

The above example prints out “11112”.

    ReferenceNumber.new(1111, :zero_padding => true).to_s
    
The above example prints out zero padded reference number "00000000000000011112".

This example shows how to generate a series of reference number:

    (1000..1023).to_a.each do |number|
      puts ReferenceNumber.new(number).to_s
    end

## License

ReferenceNumber is licensed under the MIT License, for more details see the LICENSE file.
