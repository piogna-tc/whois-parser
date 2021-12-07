# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.eu/eu/property_nameservers.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.eu", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.eu/eu/property_nameservers.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.eu")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(5)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("a.nic.eu")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("l.nic.eu")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("p.nic.eu")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns1.eurid.eu")
    expect(subject.nameservers[3].ipv4).to eq("91.220.191.220")
    expect(subject.nameservers[3].ipv6).to eq(nil)
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns2.eurid.eu")
    expect(subject.nameservers[4].ipv4).to eq("195.234.53.220")
    expect(subject.nameservers[4].ipv6).to eq(nil)
  end
end
