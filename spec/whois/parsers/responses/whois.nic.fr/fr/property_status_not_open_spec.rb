# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/property_status_not_open.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.fr", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.fr/fr/property_status_not_open.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.fr")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_not_open.expected" do
    expect(subject.status).to eq(:reserved)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
