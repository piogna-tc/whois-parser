# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tznic.or.tz/tz/property_status_expired.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.tznic.or.tz", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.tznic.or.tz/tz/property_status_expired.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.tznic.or.tz")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_expired.expected" do
    expect(subject.status).to eq(:expired)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
