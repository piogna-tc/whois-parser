# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.isoc.org.il/il/property_status_transfer_allowed.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.isoc.org.il", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.isoc.org.il/il/property_status_transfer_allowed.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.isoc.org.il")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_transfer_allowed.expected" do
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
