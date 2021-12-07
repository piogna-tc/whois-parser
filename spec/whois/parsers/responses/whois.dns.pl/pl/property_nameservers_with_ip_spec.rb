# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.pl/pl/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.dns.pl", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.dns.pl/pl/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.dns.pl")
    Whois::Parser.parser_for(part)
  end

  it "matches property_nameservers_with_ip.expected" do
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("dns1.pentex.pl")
    expect(subject.nameservers[0].ipv4).to eq("188.165.232.46")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("dns2.pentex.pl")
    expect(subject.nameservers[1].ipv4).to eq("83.142.46.21")
  end
end
