# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ve/ve/property_status_suspendido.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.ve", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.ve/ve/property_status_suspendido.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.ve")
    Whois::Parser.parser_for(part)
  end

  it "matches property_status_suspendido.expected" do
    expect(subject.status).to eq(:inactive)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
  end
end
