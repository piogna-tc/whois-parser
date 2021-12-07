# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domain-registry.nl/nl/status_redemption.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.domain-registry.nl", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.domain-registry.nl/nl/status_redemption.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.domain-registry.nl")
    Whois::Parser.parser_for(part)
  end

  it "matches status_redemption.expected" do
    expect(subject.status).to eq(:redemption)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to eq(nil)
    expect(subject.updated_on).to eq(nil)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
    expect(subject.response_throttled?).to eq(false)
    expect(subject.response_unavailable?).to eq(false)
  end
end
