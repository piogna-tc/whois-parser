# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domainregistry.ie/ie/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.domainregistry.ie", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.domainregistry.ie/ie/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.domainregistry.ie")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_with_ip.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(6)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.dns.ie")
    expect(subject.nameservers[0].ipv4).to eq("208.94.148.4")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.dns.ie")
    expect(subject.nameservers[1].ipv4).to eq("208.80.124.4")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.dns.ie")
    expect(subject.nameservers[2].ipv4).to eq("208.80.126.4")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.dns.ie")
    expect(subject.nameservers[3].ipv4).to eq("208.80.125.4")
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns5.dns.ie")
    expect(subject.nameservers[4].ipv4).to eq("208.80.127.4")
    expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[5].name).to eq("ns6.dns.ie")
    expect(subject.nameservers[5].ipv4).to eq("208.94.149.4")
  end
end
