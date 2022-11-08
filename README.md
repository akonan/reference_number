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

    ReferenceNumber.new("111122223333", :grouping => true).to_s

The above example prints out a reference number in groups of five digits for better legibility "111 12222 33336".

This example shows how to generate a series of reference number:

    (1000..1023).to_a.each do |number|
      puts ReferenceNumber.new(number).to_s
    end

## License

ReferenceNumber is licensed under the MIT License, for more details see the LICENSE file.

## Releasing

    # bump the version with one of these
    gem install gem-release
    gem bump --version minor # bumps to the next minor version
    gem bump --version major # bumps to the next major version
    gem bump --version 1.1.1 # bumps to the specified version

    # release it to Rubygems.org
    bundle exec rake release
