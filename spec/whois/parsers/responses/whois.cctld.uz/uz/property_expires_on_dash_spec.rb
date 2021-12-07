# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cctld.uz/uz/property_expires_on_dash.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.cctld.uz", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.cctld.uz/uz/property_expires_on_dash.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.cctld.uz")
    Whois::Parser.parser_for(part)
  end

  it "matches property_expires_on_dash.expected" do
    expect(subject.expires_on).to eq(nil)
  end
end
