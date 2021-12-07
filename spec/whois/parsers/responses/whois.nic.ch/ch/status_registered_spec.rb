# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ch/ch/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.ch", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.ch/ch/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.ch")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].name).to eq("Google Inc.")
    expect(subject.registrant_contacts[0].address).to eq("Administrator Domain\nAmphitheatre Parkway 1600\nUS-94043 Mountain View, CA\nUnited States")
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].name).to eq("Google Inc.")
    expect(subject.technical_contacts[0].address).to eq("DNS Admin\n2400 E. Bayshore Pkwy\nUS-94043 Mountain View\nUnited States")
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
