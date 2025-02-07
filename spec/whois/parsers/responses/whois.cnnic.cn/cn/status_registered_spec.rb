# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cnnic.cn/cn/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.cnnic.cn", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.cnnic.cn/cn/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.cnnic.cn")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.domain).to eq("google.cn")
    expect(subject.domain_id).to eq("20030311s10001s00033735-cn")
    expect(subject.status).to eq(["clientDeleteProhibited", "serverDeleteProhibited", "clientUpdateProhibited", "serverUpdateProhibited", "clientTransferProhibited", "serverTransferProhibited"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2003-03-17 12:20:05"))
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2017-03-17 12:48:36"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("MarkMonitor Inc.")
    expect(subject.registrar.name).to eq("MarkMonitor Inc.")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("cnnic-zdmd-022")
    expect(subject.registrant_contacts[0].name).to eq("Google Ireland Holdings")
    expect(subject.registrant_contacts[0].organization).to eq(nil)
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
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
    expect(subject.reserved?).to eq(false)
  end
end
