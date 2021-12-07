# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.be/be/property_status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.dns.be", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.dns.be/be/property_status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.dns.be")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_available.expected" do
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
  end
end
