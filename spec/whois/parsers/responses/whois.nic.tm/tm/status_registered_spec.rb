# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tm/tm/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.tm", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.tm/tm/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.tm")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq("google.tm")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2020-01-30"))
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
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
