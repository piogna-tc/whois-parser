# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/property_nameservers_with_ipv4_and_some_ipv6.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.fr", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.fr/fr/property_nameservers_with_ipv4_and_some_ipv6.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.fr")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_with_ipv4_and_some_ipv6.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(6)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.nic.fr")
    expect(subject.nameservers[0].ipv4).to eq("192.134.4.1")
    expect(subject.nameservers[0].ipv6).to eq("2001:660:3003:2::4:1")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.nic.fr")
    expect(subject.nameservers[1].ipv4).to eq("192.93.0.4")
    expect(subject.nameservers[1].ipv6).to eq("2001:660:3005:1::1:2")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.nic.fr")
    expect(subject.nameservers[2].ipv4).to eq("192.134.0.49")
    expect(subject.nameservers[2].ipv6).to eq("2001:660:3006:1::1:1")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns1.ext.nic.fr")
    expect(subject.nameservers[3].ipv4).to eq("193.51.208.13")
    expect(subject.nameservers[3].ipv6).to eq(nil)
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns4.ext.nic.fr")
    expect(subject.nameservers[4].ipv4).to eq("193.0.9.4")
    expect(subject.nameservers[4].ipv6).to eq("2001:67c:e0::4")
    expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[5].name).to eq("ns5.ext.nic.fr")
    expect(subject.nameservers[5].ipv4).to eq("206.167.244.5")
    expect(subject.nameservers[5].ipv6).to eq(nil)
  end
end
