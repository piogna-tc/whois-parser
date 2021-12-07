# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sgnic.sg/sg/property_nameservers_schema_2.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.sgnic.sg", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.sgnic.sg/sg/property_nameservers_schema_2.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.sgnic.sg")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_schema_2.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
  end
end
